Config = {}
Config.Locale = "pl"
--You can add here buttons like inventory menu button. When player click this button, then action will be cancel.
Config.cancel_buttons = {289, 170, 168, 56}

options =
{
  ['seed_weed'] = {
        object = 'prop_weed_01',
        end_object = 'prop_weed_02',
        fail_msg = 'Desafortunadamente, tu planta se ha marchitado.!',
        success_msg = 'Enhorabuena, hiciste la cosecha de la planta.!',
        start_msg = 'Comienzo a cultivar plantas.',
        success_item = 'weed',
        cops = 0,
        first_step = 2.35,
        steps = 7,
        cords = {
          {x = -427.05, y = 1575.25, z = 357, distance = 20.25},
          {x = 2213.05, y = 5576.25, z = 53, distance = 10.25},
          {x = 1198.05, y = -215.25, z = 55, distance = 20.25},
          {x = 706.05, y = 1269.25, z = 358, distance = 10.25},
        },
        animations_start = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim = 'idle_a', timeout = '2500'},
        },
        animations_end = {
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
          {lib = 'amb@world_human_cop_idles@male@idle_a', anim ='idle_a', timeout = '2500'},
        },
        animations_step = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim ='idle_a', timeout = '18500'},
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
        },
        grow = {
          2.24, 1.95, 1.65, 1.45, 1.20, 1.00
        },
        questions = {
            {
                title = 'Ves que tu planta brota, ¿Qué quieres hacer?',
                steps = {
                    {label = 'Regar', value = 1},
                    {label = 'Fertilizar', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Aparecieron puntos amarillos en tu planta, ¿Qué quieres hacer?',
                steps = {
                    {label = 'Regar', value = 1},
                    {label = 'Fertilizar', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'El polvo azul ha aparecido en las hojas de tu planta, ¿Qué quieres hacer?',
                steps = {
                    {label = 'Rompo las hojas individuales', value = 1},
                    {label = 'Espolvorear las hojas con abono.', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 3
            },
            {
                title = 'Tus primeros cogollos aparecieron en tu planta, ¿Qué quieres hacer?',
                steps = {
                    {label = 'Regar', value = 1},
                    {label = 'Los rompo inmediatamente', value = 2},
                    {label = 'Fertilizar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Después de regar tu planta, empezaron a aparecer hojas extrañas, ¿Qué quieres hacer?',
                steps = {
                    {label = 'Regar', value = 1},
                    {label = 'Fertilizar', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'Tu pequeña planta está casi lista para ser cortada, ¿Qué quieres hacer?',
                steps = {
                    {label = 'Regar', value = 1},
                    {label = 'Fertilizar', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Tu planta está lista para la cosecha, ¿Qué quieres hacer?',
                steps = {
                    {label = 'Cortar con unas tijeras y recojer', value = 1, min = 5, max = 25},
                    {label = 'Recolectar con las manos', value = 1, min = 10, max = 15},
                    {label = 'Cortar con las tijeras de podar', value = 1, min = 2, max = 40}
                },
                correct = 1
            },
        },
      },
}
