var express = require('express');
var router = express.Router();
var novedadesModels = require('./../models/novedadesModels');
var cloudinary = require('cloudinary').v2;
var nodemailer = require('nodemailer');


router.get('/novedades', async function (req, res, next) {
    let novedades = await novedadesModels.getNovedades();

    novedades = novedades.map(novedades => {
        if (novedades.img_id) {
            const imagen = cloudinary.url(novedades.img_id, {
                width: 400,
                height: 400,
                crop: 'fill'
            });
            return {
                ...novedades,
                imagen
            }
        } else {
            return {
                ...novedades,
                imagen: ''
            }
        }
    });
    res.json(novedades);

}); //fin novedades


router.post('/contacto', async (req, res) => {
    const mail = {
        to: 'tomyporfiry@hotmail.com',
        subject: 'Contacto web',
        html: `${req.body.nombre} se contacto a travez de la web y quiere más información a este correo: ${req.body.email}. Además, dijo el siguiente comentario: ${req.body.mensaje} <br> Su teléfono es: ${req.body.telefono}`
    }
    const transport = nodemailer.createTransport({
        host: process.env.SMTP_HOST,
        port: process.env.SMTP_PORT,
        auth: {
            user: process.env.SMTP_USER,
            pass: process.env.SMTP_PASS
        }
    });

    await transport.sendMail(mail)

    res.status(201).json({
        error: false,
        message: 'Mensaje enviado'
    });
});


module.exports = router;