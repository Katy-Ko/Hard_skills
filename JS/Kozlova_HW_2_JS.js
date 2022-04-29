function string_validation(string){
    if(typeof string == 'string'){     //Скрипт должен на вход принимать строку. 
        if(string.length < 5){         //Минимум 5 символов в строке
            console.log('min length is 5')    
        }else{console.log('accepted')}
        if(string.length > 64){           //Максимум 64 символа в строке 
            console.log('max length is 64')  
        }else{console.log('accepted')}
        if(/[a-zA-Z]/.test(string)){      //В строке должны быть буквы 
            console.log('accepted')
        }else{console.log('string does NOT contain a letter')}
        if(/[A-Z]/.test(string)){         //Должна быть хотя бы одна буква в верхнем регистре 
            console.log('accepted')
        }else{console.log('string should contain at least one uppercase letter')}
        if(/\d/.test(string)){            //Должна быть хотя бы одна цифра 
            console.log('accepted')
        }else{console.log('string should contain at least one digit')}
        if(string.includes('@')){          //Должна быть хотя бы одна @ 
            console.log('accepted')
        }else{console.log('do not forget to add "@"')}
        if(!!string){                     //Строка не должна быть пустой
            console.log('accepted')
        }else{console.log('this is NOT a string')}
    }
    }

    string_validation('kL')