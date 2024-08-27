# getx_ecommerce_465

GetX v4.6.5 ECommerce App for pro

</br></br>

## Utilitys

### theme

#### custom Themes

- TAppbarTheme
- TBottomSheetTheme
- TTextTheme
- TElevatedButtonTheme
- TOutlinedButtonTheme
- TTextFormFieldTheme
- TCheckBoxTheme
- TChipTheme

### constants

- TColors
- TSizes
- Enums
- TTexts( Text Strings )
- TImages( Image Assets Path )
- Api Constants

### device

- device utility

### formatters

- TFormatter

### helpers

- THelperFunctions( getColor(), showSnackBar(), showAlert(), ... )
- TPricingCalculator( calculateTotalPrice(), calculateShippingCost(), calculateTax(), ...)

### http

- THttpHelper( get(), post(), put(), delete(),...)

### local storage

- TLocalStorage( saveData(), readData(), removeData(), clearAll()...)

### logging

- TLoggerHelper( debug(), info(), warning(), error() )

### validators

- TValidator( validateEmail(), validatePassword(), validatePhoneNumber(), ...)

</br></br>
## Login / Registration UI/UX

### Native Splash Screen

- flutter_native_splash 패키지 사용
- root 에 flutter_native_splash.yaml 파일 생성 
- "dart run flutter_native_splash:create" 명령으로 native splash screen 생성
- "dart run flutter_native_splash:remove" 명령으로 native splash screen 제거

###
- 3 On Boarding Screens
- Registration Screen with Email Verification & Success Screen
- Login Screen
- Forgot Password & Reset Screen
