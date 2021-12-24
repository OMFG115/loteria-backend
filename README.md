# loteria-backend

## Descripción de la prueba
* Modelar una Base de Datos que permita la creación de las cartas y tablas de la lotería
* Diseñar el algoritmo (en código o pseudocódigo) para generar las tablas, considerando lo siguiente: El número de tablas a generar lo define el usuario
* Ninguna carta se debe repetir por tabla
* Ninguna tabla debe ser igual a otra

### Resolución
* Para la BD, unicamente se creara la tabla de cartas con: id, name (nombre de la carta) y image (url de la imagen)
* Cuando el usuario entra a la aplicación, se muestra un modal con un input para seleccionar la cantidad de tablas que se crearan
* Siempre que entre el usuario se generaran tablas aleatoriamente utilizando la siguiente funcion:

Función para crear el contenido de una tabla: Llena un arreglo de tamaño 16 con números aleatorios del 1 al 54
```
createTable(): number[]{
    return Array.from({length: 16 }, () => Math.floor(Math.random()*54)+1);
  }
```

Función para crear el arreglo de tablas. Se crea una variable auxiliar con el tamaño resultante de un arreglo mediante la función size, al compararse con la longitud de la tabla original, se valida que no haya números repetidos, en caso de que no sean iguales, se genera otra tabla. Tambíen se valida que la tabla generada no sea igual a las tablas ya contenidas en el arreglo.
```
createTableArray( tableTotal: number ){
    let flag: number = 0;
    let table = [];
    let checkTable: number;
    do {
      table = this.createTable();
      checkTable = new Set(table).size;
      if(checkTable===table.length){
        if( this.validateArray( table )){
          this.arrayTable.push(table);
          flag++;
        }
      }
    } while (flag != tableTotal);
  }
```

Función para validad arreglo. Se crean dos variables auxiliares, en una se ordena el arreglo del argumento mediante la funcion sort y en el otro el arreglo en la posición x. Si ambos arreglos son iguales, se retorna falso.
```
validateArray( array: number[] ): boolean{
    if(this.arrayTable.length != 0){
      for (let x = 0; x < this.arrayTable.length; x++) {
        let aux1 = this.arrayTable[x].sort();
        let aux2 = array.sort();
        if(aux1 === aux2){
          return false;
        }
      }
    }
    return true;
  }
```

### Ejecutar el proyecto
En el front:
```
npm install
```
```
ng serve
```

En el back
```
npm install
```
```
node server.js
```

### Otra alternativa 
Al momento de analizar el problema, se me ocurrio otra forma de abordarlo. 
Se crea una bd con 3 tablas: cartas, tablas y cartas_tablas(relación entre ambas para agregar las cartas que contendra una tabla)
Cada vez que el usuario solicite crear tablas, se crean y se guardan en la BD. Si el usuario pide más tablas de las que se tienen creadas, solo se crearia el excedente, por ejemplo: Si tenemos 10 guardadas en la bd y el usuario pide 16, unicamente se crean las 6 extras.
En el caso de que el usuario pida menos de las que tenemos, se solicitarian al back los id random de las tablas.
