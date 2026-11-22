/*

/ Ano bissexto

pub fn is_leap_year(year: u64) -> bool {
    if year % 400 == 0 {
        true
    } else if year % 100 == 0 {
        false
    } else if year % 4 == 0 {
        true
    } else {
        false
    }
}
fn main() -> std::io::Result<()> {
    let mut entrada = String::new();
    println!("Digite um ano:");
    std::io::stdin().read_line(&mut entrada)?;
    let ano: u64 = match entrada.trim().parse() {
        Ok(valor) => valor,
        Err(_) => {
            eprintln!("Ano inválido. Digite um número inteiro não negativo.");
            return Ok(());
        }
    };
    if is_leap_year(ano) {
        println!("{ano} é um ano bissexto.");
    } else {
        println!("{ano} não é um ano bissexto.");
    }
    Ok(())
}


/ Acrônimo
pub fn abbreviate(phrase: &str) -> String {
    let mut acronym = String::new();
    let mut previous_lowercase = false;
    let mut previous_separator = true;

    for ch in phrase.chars() {
        if !ch.is_alphabetic() {
            if ch != '\'' {
                previous_separator = true;
            }
            previous_lowercase = false;
            continue;
        }

        if previous_separator || (previous_lowercase && ch.is_uppercase()) {
            acronym.push(ch.to_ascii_uppercase());
        }

        previous_separator = false;
        previous_lowercase = ch.is_lowercase();
    }

    acronym
}
fn main() -> std::io::Result<()> {
    let mut entrada = String::new();

    println!("Digite uma frase:");
    std::io::stdin().read_line(&mut entrada)?;

    println!("Acrônimo: {}", abbreviate(&entrada));
    Ok(())
}


*/
