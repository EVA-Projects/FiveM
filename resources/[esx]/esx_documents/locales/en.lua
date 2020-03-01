Locales['en'] = {
    ['document_deleted'] = "Has ~g~eliminado~w~ el documento.",
    ['document_delete_failed'] = "La eliminación del documento a ~r~fallado~w~.",

}
Config.Documents['en'] = {
      ["public"] = {
        {
          headerTitle = "FORMULARIO DE AFIRMACION",
          headerSubtitle = "Formulario de afirmación ciudadana.",
          elements = {
            { label = "CONTENIDO DE AFIRMACION", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "DECLARACIÓN DEL TESTIGO",
          headerSubtitle = "Testimonio oficial de los testigos.",
          elements = {
            { label = "DATE OF OCCURENCE", type = "input", value = "", can_be_emtpy = false },
            { label = "TESTIMONY CONTENT", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "DECLARACIÓN DE VENDA DE VEHÍCULOS",
          headerSubtitle = "Declaración de venda de un vehiculo hacia otro ciudadano.",
          elements = {
            { label = "PLATE NUMBER", type = "input", value = "", can_be_emtpy = false },
            { label = "CITIZEN NAME", type = "input", value = "", can_be_emtpy = false },
            { label = "AGREED PRICE", type = "input", value = "", can_be_empty = false },
            { label = "OTHER INFORMATION", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "DECLARACIÓN DE DEUDA HACIA EL CIUDADANO",
          headerSubtitle = "Declaración de deuda oficial hacia otro ciudadano.",
          elements = {
            { label = "CREDITOR FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "CREDITOR LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "AMOUNT DUE", type = "input", value = "", can_be_empty = false },
            { label = "DUE DATE", type = "input", value = "", can_be_empty = false },
            { label = "OTHER INFORMATION", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "DECLARACIÓN DE COMPENSACIÓN DE LA DEUDA",
          headerSubtitle = "Declaración de liquidación de deudas de otro ciudadano.",
          elements = {
            { label = "DEBTOR FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "DEBTOR LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "DEBT AMOUNT", type = "input", value = "", can_be_empty = false },
            { label = "OTHERINFORMATION", type = "textarea", value = "DECLARO QUE EL CIUDADANO ASOCIADO HA CUMPLIDO UN PAGO CON LA CANTIDAD DE DEUDA ASOCIADA", can_be_emtpy = false, can_be_edited = false },
          } 
        }
      },
      ["police"] = {
        {
          headerTitle = "Permiso de estacionamiento especial",
          headerSubtitle = "Permiso especial de estacionamiento sin límite.",
          elements = {
            { label = "HOLDER FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "HOLDER LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "EL CIUDADANO ASOCIADO HA RECIBIDO EL PERMISO DE ESTACIONAMIENTO ILIMITADO EN TODAS LAS ZONAS DE LA CIUDAD Y ESTÁ VÁLIDO HASTA LA FECHA DE VENCIMIENTO ASOCIADO.", can_be_emtpy = false },
          } 
        },
        {
          headerTitle = "PERMISO DE ARMAS",
          headerSubtitle = "Permiso especial de armas proporcionado por la policía.",
          elements = {
            { label = "HOLDER FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "HOLDER LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "EL CIUDADANO ASOCIADO ESTÁ PERMITIDO Y OTORGADO UN PERMISO DE PISTOLA QUE SERÁ VÁLIDO HASTA LA FECHA DE VENCIMIENTO ASOCIADO.", can_be_emtpy = false },
          } 
        },
        {
          headerTitle = "CERTIFICADO CODIGO PENAL",
          headerSubtitle = "Official clean, general purpose, citizen criminal record.",
          elements = {
            { label = "CITIZEN FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "CITIZEN LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
            { label = "RECORD", type = "textarea", value = "LA POLICIA DECLARA QUE EL CIUDADANO ASOCIADO A ESTE DOCUMENTO TIENE UN REGISTRO PENAL LIMPIO.", can_be_emtpy = false, can_be_edited = false },
          }         }
      },
      ["ambulance"] = {
        {
          headerTitle = "PERMISO DE USO DE MARIHUANA",
          headerSubtitle = "Permiso oficial de consumo de marihuana medicinal para ciudadanos.",
          elements = {
            { label = "INSURED FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "INSURED LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
            { label = "MEDICAL NOTES", type = "textarea", value = "EL PRESENTE DOCUMENTO OTORGA AL CIUDADANO ASOCIADO AL MISMO, EL PERMISO DE USO DE MARIHUANA DEBIDO A MOTIVOS MÉDICOS NO DIVULGADOS LA CANTIDAD LEGAL Y PERMITIDA QUE PUEDE CUMPLIR UN CIUDADANO NO PUEDE SER MÁS DE 100 GRAMOS.", can_be_emtpy = false, can_be_edited = false },
          }
        },

      ["avocat"] = {
        {
          headerTitle = "CONTRATO DE SERVICIOS LEGALES",
          headerSubtitle = "Contrato de servicios legales prestado por un abogado.",
          elements = {
            { label = "CITIZEN FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "CITIZEN LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
            { label = "INFORMATION", type = "textarea", value = "ESTE DOCUMENTO ESTÁ A PRUEBA DE REPRESENTACIÓN LEGAL Y COBERTURA DEL CIUDADANO ASOCIADO. LOS SERVICIOS LEGALES SON VÁLIDOS HASTA LA FECHA DE VENCIMIENTO ASOCIADO.", can_be_emtpy = false },
          } 
        }
      }
    }
  }