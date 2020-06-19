
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>PHP Learning</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
      <link rel="stylesheet" href="./assets/css/style.css">
  
</head>
<body>
  <div class="login-wrap">
  <div class="login-html">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
    <div class="login-form">
      <form class="sign-in-htm" action="flogin" method="POST">
        <div class="group">
          <label for="user" class="label">Username</label>
          <input id="username" name="email" type="text" class="input">
        </div>
        <div class="group">
          <label for="pass" class="label">Password</label>
          <input id="password" name="password" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <input id="check" type="checkbox" class="check" checked>
          <label for="check"><span class="icon"></span> Keep me Signed in</label>
        </div>
        <div class="group">
          <input type="submit" class="button" value="Sign In">
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
          <a href="#forgot">Forgot Password?</a>
        </div>
      </form>
      <form class="sign-up-htm" action="registerf" method="POST">
        <div class="group">
          <label for="user" class="label">Username</label>
          <input id="username" name="email" type="text" class="input">
        </div>
        <div class="group">
          <label for="pass" class="label">Password</label>
          <input id="password" name="password" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <label for="pass" class="label">Confirm Password</label>
          <input id="pass"  name="id" type="text" class="input" data-type="password">
        </div>
        <div class="group">
          <input type="submit" class="button" value="Sign Up">
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
          <label for="tab-1">Already Member?</a>
        </div>
      </form>
    </div>
  </div>
</div>
  
  <style type="text/css">body{
  margin:0;
  color:#6a6f8c;
  background:#c8c8c8;
  font:600 16px/18px 'Open Sans',sans-serif;
}
*,:after,:before{box-sizing:border-box}
.clearfix:after,.clearfix:before{content:'';display:table}
.clearfix:after{clear:both;display:block}
a{color:inherit;text-decoration:none}
.login-wrap{
  width:100%;
  margin:auto;
  margin-top: 30px;
  max-width:525px;
  min-height:570px;
  position:relative;
  background:url(data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSEhIVFhUVGBoXFRcYFxgYGRcYFRcdGBgXFRgYICggGBslGxcYITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0lHyUtLy8rLS0tLS0tLS0tKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALYBFQMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAIDBAYBB//EAEQQAAEDAgQDBQUGAQsEAwEAAAEAAhEDIQQSMUEFUWEGInGBkRMyobHBFEJS0eHwYhYjJDNDcoKSorLxBxVT0pPC01T/xAAaAQADAQEBAQAAAAAAAAAAAAAAAQIDBAUG/8QALxEAAgIBAwQABAUEAwAAAAAAAAECEQMEEiETMUFRBSJhcRQVQoGhIzKR0VKxwf/aAAwDAQACEQMRAD8A0ELkJ8LkL1LOYjIShPITYSsBkJQnkLhCAGEJpCkhcKYEZC5CeQuQgCOFyFJC4QmIjXIT4TUANhKE5cQIalCdC4gaGwuQnQuQgBsLiclCAGwlC6UkCGpQnQlCAGwlCclCBjYXITiEoQA0hchPhchAhsJQnQq4xbfaey+9BMSNo2md0nJLuVRLCSlbRcdGk+RSRuQUwwQuQnLkKRjYTSpITYRYhi4QnwuFMBkLhTiEoQAwhcTiFyEANhcT4TSmIYQmkKSFwhADIXIT4XMqAGwllToXYQBHlTYUpC4QgCOFwhSQuEJhRHCUJ8LkIAbCJYHgNeqA5jO6dHFwAMfH4IeQttwTGFmGpAECz/G1Qiyxz5HBWi8cVJ0wdQ7GVT7z2t8AT+SC8ZwHsKxogl0BpBjWRyW8qYs/x+kfOFRNc5pDRvqf7vILkWeadtm3SVGNp8Oqu0puPl+as0eBVnfdA01cN/Bal9V3MDy+pValUP4zoNPDorepl4EsKBTezD/vPA8AVLT4DRF31HeEgaFXqgkaOPjJ+aVMnZoHpz6BQ80n5L6cUUncPw7T3W5rj8R2P1VmlhqbSS2m0HnDQfXVcrz01C4+sBq8DzCh5H+plKHpCfUMmw9TySVZ2Jpybk+qSz60P+SHsl6K0JJ0LkL07OMaVxOK5CAGppT4XIQA2FwhOhchOwGQlCdC5CLAbCaQnkJQiwI4ShPhchOxDCFyFJC4QnYUMhKE6EoTFQxIhPhchKx0RwlCfCRanYURwlCkhcISChgC13D6Tm0KMwO64+Tn5h8FlGhaPHt/ouGkcgdj96y49bk247N9PG50Xq2JH3qrR4EfqqzK9NzoaS4xO/TyXmuJ7V1w97G0qQDXFsmSfGCtl2ZxBe2m9xbmfSBdlAAneAPBcMlmjtckqbOhOEm0nyg8AJHd+SF1eJlsyGNAtLnAC2sSRKKGOZPqvPP+oDB7IW0rEfT6ImpSnGCdWOLUYyk12NI7jQccgr0sx0a2STAnWDyV/CvzNBJJ158+ll5Z2VpAYqkQBqb+LSNfNeqcPBLBfnt18Vc8Dw5lHddoiOXqY3Kq5KnEGjM3umIJ1F4k9Vhz2zcfcwzR/ecT8j9FveIN7zZPMbDX/lYOj2OrT3qlFtz9/NvyaLrPBDTyyTeau/FlZZZVCPTNDwzEuq0KVVwaHPDpDQY7tRzRy2ASTsHg20qLKReHluYkgEDvOJ38Ul5Gp6fVlsqr4O3EpbFu7hMhcKeQmkL62zxaGkJpT1whFjoYlC6QkCixUNK4nQlCdgMShOIXRTPI+iW5DoiIXIVpmCqHRhUreGVDsBHMpPJFeQ2NlGEoRJnDDu9oQnhLzVAzR/Xuo26MzA330SeaNWPpyuiSE0haccBpjdx53Uf/AG9ja7G5QWOpkmdJBsZ2ss/xMfBfRZm4T2UHHRpPgCVsKjqFJpe4sa1oJJ6NuTa+iqYLH0n1zWY+aTqQaHCYzNeZERMqHq34RXQS8mYwNF9WrVosYS+llL9BGeY18CiVHs/WLi3uggAm5+9MaDoq3Z7ibGcUxmcwHsaRYmcrjGnRy0g4/h21XuLnQ5rAIadW5p+YSyaiafBMcaop0eybvv1APASrtPsnSGrnn0H0Uju1OG2Lv8pT2dpKB+8B4z+Sxeafsvpr0SM7O4Zv9nPiXH6qHiOAZTpPcym0EFpbYbEfVW6XGqLtKtP/ADfmmY/G06lF+V7XRYwd7WUb5PyVtrwUe0/FfsjKL2MZ36jGmW6Ne4BxEbwV3td7jJ/HPldZb/qNxmjUwzW0qgc6k5uYXEOGgv1BRnEcdw+KZTLHAkh4yugOJYBmIabkCRcDdPNDdjoMUqmYc9laZe9zsQe86YbT+rnCfRafgdMMyMZmLWMyguABO82tuitIcmR8Pknsmdf3Czk8s0lKXC+hqlCNuK5Y+52+CFVMA9z3S2mQXF3fDXXk3AIMIxm/i+QVZ+Jpg3qD169PFTmSlTk6r9hwbXCVldmBqQf5wNHJrfyAU2FweVsZvh0CT+IUo96fUpYfGMN2t5bDkox9Pd8rt/exy3VyuDuIwdN3vSYHONxySGBpbM/3FMxXEC0WbMyNf0S+01jpSjx/YSyPEp/NG39rCKm1w+PuSPoNGjB6BJVMQ/EWswfvzSUPNjX6X/geyXv+SOtg6mrcoPX9FJRwbvvOb5A/VGPYazuoqvQfqvReVnPsQOpcNbcgkzc8uStMwlNt3R5lTYdsWi0SsP2wcRXMch8ktzfkGkjaNxNAEAOZJNhIlYyu8hzoJHePzKF8Gqk16QP42/NE8QbnxPzTTaYnyhUuJlpBf3m7jfxC0lH2ZbIDbiQSZWKxpt5qxwbi+RwpEmHaG1v0ROTrgIpWbWWiNPJsrtSrcXdvsAqOLqkMLuQnXkOiH8Exzq0ucAIi1zqJvKz3SavwaUlwFK3EQ2tTp5T/ADk3LiIyiRp5q02pMwBrpcqoeCtqVG16lX2bKc6QCSRuXWFuinq9oMLR7tIF5HKwPiSsp5afyqxxj7C9HBZQS54BvAaBM9TsgnZjhRoCp9oY1+ap7WnBnKcuUzIF7Dmh7u1VV7g1oawEx+I+pt8Fl6HaPEvNQPrOgGLQLeSSeaUXVIPkT5PVa2OMWYIQ3E8TI3aPT6lebV+Lj79X1d+qp1ONUR/aN/fgo6eR+S98PRv8dxNpBaajYcCCLXBsRbmEJp4qlSZkpuytEkNbIEnoFkHdoKP4/QFQv7R0QNT/AJSULBL2w6sfoaKtxOl7SBOcifdgmb676JorjqfNAuOY4MxDahENNNhB/vMEWVX+UdL+L0K2yYHFqrMoZU+5on1J/wCVEfEIAe0lL+L0XP5R0+vos+kzTeg4WdR+/JNc3w+P5IJ/KClz+BXf++Uz94I6bDcgjisW1nvSbTZPFYCDMWtfmg2JxQqCWEGP3CnpPDm22iVpkw7caaM4TubTCb+KhljWII2zn80f7H8WDyGvqF0k5CSSDraeawGIpNdXfIG31Wg4JbIBb3otCuejUYRm35RMc9zcKPVBHL4fmgnGuJtw4qVn0vaBkd2QCJIuitCrLWnNqB8kA7VYY1aVamwy9zRlBLRJtuVlqauO7tZtiunXegZQ7flz2tZhGNDnNbJcNyBsFq8ISC8Ws7rtb6LznC9l8QCCfZtgg++DoZ+6CvQaDwXPIBILiR4Fx/NVm6CzQWJp97ojH1XCW9DseTlBka8uh/Jee8W4xivb1WfaamVr3AAEARsPivQcYJaLbjl1H1WZxHZylUqvqmpUGd2aAG7gWkzKiOpwYNRJ5nw0hzx5MmJLH7CH/TisXtre1e5xDmwSSdQfySUvBMKzDZhTznPE5nD7sxEN6rqyy67SSm3GXH2HDT51GmjclRkJ0pj10iOb+SFY3hOHeTUqNzHcku26BFov5LB9p+OV6dd7GVCGiIAjkP1TSbFJpGno8FoNhzKTQbEHcb2OyyFU3PioeBcYrvxFJrqryM1xmMEQdlJVVLgm7KeNEjzVIYbvZpureMfAHiqoxA0zCdYi/NVZJqeC4oPb7Ko6+x/EPw+KL4Ph1OnZggdOml9VhaeIIgyRvI18lq+A8VFcCMxcPezWBkWICxyKuUjSL8AvtbmOIoU2vIzkDKTa5iY2UHE+GVaTS5wsNwZGseV0u2lcMxOHcROVwdlnWCLTsi+PxrH0HtgNdUpiqBrDZG/Qq5prbxwyYc2rMHg8VVdiKQMhpqNFhtPNAuIA53ATqfmtPhhFakDbvsGvUD6oPSEPqf3vzXfjwrt7OSeR3YCdT6KNwWicENx7Zad/+VtLTqKuyY5ZSfYGSuOarOHoDLpddq0OUrHppK7Rp8zfZhbtXUBFOP8Aw0vgwLNELU9qLsoRc+wpfBgWabRdyUTaVWPHCT7IiIXCFM6g7kmOou5LJyj7NenP0yEphClLHciontKm0GyXoKcHfDXjwRrho7jj4fMoHwRwHtJtYR6lG+DPllTofrP1VZl/RJx8ZGEKTzzKtYJ3fbvdVKIJ5+it4YQ9szr9V4uNy3q77nfJKnRveBuJp+BiDt4dI28VzHz7Tb48v0VPgFUBzmmYInfb/lXsTTL6gDQTYdNjzW/xSLlh49ojSOp8lczzU+B1In5c1KOF1PwD1ao2U3MeWOAka3G8H6rydDhyY80XJUjszzjLG0mPxbu6e9uOXNUaeg1+Kv4lxLTYbb8im0sMwNBfWY2bwSAdepXV8T088uVbF4MdLkjGDspwP3KStu+zDXF0vVv/ALJLg/LdT6/k6PxeL2ahx6JKEvOwPmCPmnwvpTzR5KyXFezjq1Z1TM2CRlBnbXMBzWpLSshxrtk6hVfSFIHKSJLjfyhNX4E/qWMJ2cNJ9OpNPuA5oYQXETDpOh0QB5RDhnbSpXrNo+zYA6QT3iQA0m1+iFvKaFwU+IGw8UOGHOfPPSN9IV3HusPFQCmYnzUZJyj/AGgkn3NBgOzVao2S5lPURUdldprEaX+CMcB7PDDk58VQNgLO5LEGo4OpgOsSZHlN0a4VhvauLS/7pgg6H6olNrjxwVsSpne3HsvtOGGdr2k94tNtbiZTeO42i0dxxkU/ZMaAXCMwNzzQHtG00hTY90llV8mZ0ym3RM4LVNfNeRma1pOotNh5haTg5beSYTUHLi2EKfEqRr0mjDGXPbDnEWII70CdNVnmUXF9QA76nz5Faihwr+mUW5rgOqWFpExPoqfZrANq1q4fPdj3bakrsxY4rh2zny5ptpql9kBamCO7j6fqh9R8GIBjn+i9Ifwajyd5uXnPEmBtV4Ggc4DwDoS1UMW1bEPT5c1vdIjNcj3qbY31/NI8RZ/4R6qrSPfrD9+SrZ4LerrrhUEdbyy9s0/HajcmGq5BBoUyW+WmiEO4oz/x0/RXu0tL+j4d0n+pA10ymFkAZldOTGpV9jmx5ZRtJ+Q67itP8Df8oVWrijOe2XllbshrADrsifE6LW91tgIPqJ+qyeFJWdGLI5tpvwS0MQ15gNHoPopm0GuMBoRXg+GYcC9+UZv5s5oE+8Qbobimfzb4kd03WWWOzIo+wxzcoOVkmHwgbm7sSFY4TQALyNS3TaxVbslQ9rTe0n3S5xO8Bg38Vd4WyMw/hPzXTmW3Ejnxy3ZGWq/FajHsptDYLZkydB4q7g8S94aXESHxYRy6oVXwpe9jwR3RBF5NkRwzcojXvA+g6rKWTD0O63FbcnV7cGs4a6Kjb9PVFce4jNDiD7N0EGCDldEHYoHh7OacuhHLmj2MsRIsQRtvb/7LHWNKG5+1/wBmunVyo83o8XxLh3sTWPOajufit5wl5NOiXEkmm2SSSTaJJPgglHspSb/a1CPBo1vyR7B0wwMptkhjQ0Sb78h1UajXabLsjifNoMOnywcnPtRarEZTrp1+ixnbdg9tRMa0jr0qHn0IW1qTB8DzQfH8MpVyw1WkmmCAWvc2zoMEDVGTU49PnjPJ2pjWKWXE4x7mHaz92SWzHAsOP7L/AF1P/ZJb/nuj+v8AgwXw7P8AQ35rNvcWEnwOhTg5ZDhfFwxr2vdmsBTJiSGw0DnMHfkeS0XDsSHsDp2Um1lyo76/JeV8bwb61eq7K8DMdGOP3onwi69Jr4gGmXggjKSDzsdEH4Tj2GnJLmuuTLTHrvcJb6E1ZjOA8MfSxlM5Xlozy403AQGOAJnRSVKml1rOJ9o6QBayXGDfQaXNyNjK8y4hiy6w5yLbfuEuqS1QRx9SwQ3KRVLzAZGu3u8lVrcQJgfhubfvmuvruOUXAItpEHf5eiJ5WuwlyEqtUEtAImXDzy/qtN2LpkVIOuUddBdZ3gXaJ2FLXZAaRzS0tDy4wAILr2I25rdYDtXVqE+zpUQQ3N7seQjdQ8rXy33NaTp+jG9vT/OEb+1qf7Wwh3Zuv7NjYAJLs3OIAF+tiiva7i5xD6NR7A1wqFrmgROWNpN/yT6GCBp1KgblDaYOoklz4bYn9wu5NVGzCVtyFguJ1Di2OgSGBvkT1011VLhdeqytXc2Wgm+h0J/P4qbDtLXk6EFo2Om+8qPA4cuq1zmAEjKHOuZMA/vkt3mgn3SRzbJPwXH8Tqn7xHmP2Fi8a+XuM3JJnzW4/wC3EyS4RFog6EggiQQRGngsnjOEVGvDXR3rg3uD0WWoy4KSjKzXBCavcgRUrui5VcvjYc7j5IoeG95wLrDTST+4QyrTgkclzwlCXY2dh3jmY4TDGRBpO25OPqskGrWcUqf0PDCDZj7/AOIrPUKDS3MXRz9V1yaSRhHuysxseaKYzCVKjBWBGSGtN7yAAbKAUqX4/iEbpBv2Ko1pkZ556woclVFpNchHspDsHUYZNh8Kh1OykODZyPmsz2cx7w9lIGGlxkDexN/Na2oecqciTlYY7Sok4dRDc+QAHI7bwn5KhwukPZlxHe7wlE+HVhnMXJa+3+ElDuDuljp/EfiravGSn/UOUj1U4PVMoMaG5nPa3xMKZpYfdqscReAQTy+q8DoZP7q4PS6kewfY8WM/v0WgxrxlaZOnXofogGHzEN0vCP4tpIAt8eS79ct2na+hjp3WVFcHx+K7TPe0O3PqPqlicbgqbiypjaTXDVpsR4hdbVpPAqUKzarZLSWiwLcpjxgr5/Fo8+KSnJcWvJ6E80JJxT5LMjr/AKlSZ4cvl18Fcg8/gq5q0abHVK9X2bGkCYm5J5SvT+J4ZZdsY9+Tl0s1C2znl8lxVv5S8L//ALD5U3/+qS8n8s1Pr+Tp/FYjJOrFwmRmAB3uBO/PRHuE8caaXsnvfnOjWmY5iDrOkdQskaliNBGo+GqXD8UynLy85zaGtmWHXMTYTaAvoLdHmJ0zb/aXMZ7FryRJAFoBIByzz1ttOyBY3HVCCwkA7EHlpfQxpDTCDYTFPNVjiSe8YEgTtE6RzJEaolxMZjDCHkE+0DGnLJIcGtJuQDmvN45FTt55LviwK6vUJ0zT015TGmyv4nD91xzXsCZ7rQ0gEi03sU1lBoa0tDs0BxpljgGxvJMTAmOZ3VHEvcQ8CLe8C6bnb6f4UpPc+DMixjLSJg6AjWPzPyXKQBytzNJBgXAJEWHr81A/EkibdwRpNgJm9jcpYOpIc6G59QTGg1/PRN3QgjRDw1t4c0ktB1GbQdNZjVGOxHGnZqlSu+GwRTJAEk2sN7wsqMeADJ945gesanzCtBz6ha1zGHNE3GgJ89ibKr4o0T5DPbOsd3S4Pc4kCNWt2m3qrdOg52Ep3Ay5HXM5mtpixnQFznax7qrcQw7ahGdoywTZwu6zQ0QZF2lSY3iLC0sLMrCJAAECp7tssEgm2XYLfJmWxKJUcdTc5dis/GDvFrWNbOZ9UtswHSwJy7wCq+BxAzWMnNqBaBfTqQPVDOI4uq8Np/1bRAMW2tmAPKLbKxw3COayM0slpc3U5jrDfLnsuaasTavhBPH4winluC+Z93UDedALTHNRYWq9tMZniQBPenUnuj0+KrurBjspkgwXR4AubPLZUKNM+zvHeMEaGCLAEjS+/NSlwU5Wx2NqPDWlrSARYyPCfMfNCcXmBgk6g8pB+iKex9pSlsyKusQAxrSbCb6jZUKdIuzCS4MvedHED8tVvD5TNoL8Tqg4OiAdqv8AvKy2GMsc2QJtcTqtFiaX9GpiDINURv7xjRRcA7K1MRh8TWnIMO0OAcHTUe64a0RYQDdehNrajnhF2wFU4bUbexEAzMW036/JaHhTC3B1QY7r/m0H6qDF4Y/ZWVMrg+QzLlMloLjMchl/1BScLflw1cEGSZAIue7sN9FgnyauNAXhdXLWY46B1/BbGtUDqbnBxIc20+Cu4PsZQbi6bC8htJhfWcS0yQI7lu6faQ3e11RwGGZiCKVEik01HgtJJgNBdAc6T3iLTpmHJU5JuxKLRnuxlUNxdEnTvg/4qT2/VaXhDwc4H4v0TeCYOhUPtaVQt9mS5ktGdxBgteGw0WJk9LAypKlFlPJVpn33Na6blxdqBy78jwC03rZRmoPfYM482aAiff8Ay/NVuzLQKpE/cPwLUbxeHhkvb3c8DMLTH6LuAotDpa1oMG4A5fouD8QlDZR0vE291mp4O1pNOx9DyRzFNETl35HqEF4EJNO/yWixVDuEzy2HNPPzgf2Hj4yfueSdu2D7bU2mDHiFpP8Ap0QcLVbc5a0/56Q//MqTtLh6ZxRzNa6WsNwPwBabh2Cpsw0sY1mbIXZQBPdc0TGup9VxajXR2LFTv/Rrj07U91kxA5fAIJ2tZOCxAyi2V2gtFTX/AFLSU8NIHePoFnuKxTbXwtWs2pULHvENAaQxwcWdXNGvgV1Zr+SaXZ/+GcPMTyWRzSW2o4GmR/Vs/wAoXVm/icV+lgtK/YKrsdAgCCNdPdtE7aX8RzSweEJOXvSfuiLkxBH5JjTIJdOkgdTvcKXh9EueMl3SQLmJAmDBBBtE+KOexFGq4XQloZq1pIMSbjUOcQIbP3eaKtpkSQIJiSLTFhPghfCKRa9zXGZhwbP8IiqOWYSCObV3inFSxwp0w0vIJJkQAN/itLoopcTwT2vzvqlwzF0TcENgR0mNeaAY+i0NJazuuBeS7Ux+KDzefRWcznh5q1BkOoaYnQwTYzB05ShPFscXNbDRM97KLQAAItoQB8Fil8xEgcynl78S06jMBIkiDFxcKFtWDy3j62Ty8kkMbd9raXIgeolQtqBtiJNwDfe35ro2kE9OoT7rbCATc25nl+SleQCWtf3RckDny8FRZiHQROt55X9VMwHQNBJs25m562gzuiuRoO0MdTFNjX5obmGYghxl1ibnMWkmLzpyU2He6q5ns4InM9z5GYz3iQLCwOio1cMWBrahzFszlk5JgZZ312taVbZTga3F7Rl7w2tHK0bqJuuxsnXDLeHwdNuR9RpDpMESQQHmPCbCPFdwfcY8TmfIA0PdIgAdJk+XVNrtJYC18wLwZgRpl+7oALc/BRdn6HtHPBeWloO1oM6DTUHmptsal6IqZaS55AdaA4xLiRDQAbTAJ5CN1WGUPJeAdI1EyCAI6yCrOLcTVnICASbMytInK0QNJAvCq0cRBe90iwsQAS4nlFreCKaJJrsYGhwDLudoIn7oMaeuiE4nDBuXI496ZE/gEgOvZXsa91R2SkJzgFuxiJgganUGeSH1WZXlp97Qu2y84GnI+BVxvyTJ2aPgNenVpChDBUaXEve5zSdMrW3hw1tbbWUeoYevh6dZodIqsDJzHuFhJFiNwXiegWQwODaWmQSCSWTuBrEXDri/JH8FjS0ZZeWRoZP3SJHm4qZZqNIvii23s7VIE1BMX1N+l1x3ZZ8yagt0d+aI1e0Qa0FzXXHQyeQ5a7qQcZEAkOuSAdTpy3/4Q8o6QIq8FcKjDnyty0wSQYeM0uvzzBUML2Se3OBUAy1HOFrktMARtbfmjmCqhzs3tHC+YsJsNARae7z8UfxFbvksbY5S483QA4jpYct04zYNJnmnB+HVqdPNTcCHVC2B7wIbMX6BWuG8Be8U2lzR3xVaZmA054JGhIIPmVoeGYOsyoC6kcgLnWgnNBYDE6Fh+StcNwkMbnp1Wua9xbcWBNh3XG0bK3NkqKD9Y4d39g4CZ95rvg4Hqs5U4N3yWsbBNpLZjrA6ovJO1T0A+akbPI+cT8FEZNDcUypw3CFhEhoAP4tt1rH1cI4QS/1QITyCQnkPVDk3wCikF6mEwLjmiTAEuEm2lyCpmswpGU1HBvIERb/Cgl+XxCaZ/CoavuijQsp4bRtZ7SIh3dtHKQsJieBNxPEzT9q1lDChrgQGh1RriO7J1JuHE/VGwebULdwx3tXVg7vF4I5ezDcrmEbzr4wtY5OKZDh6NS3geDGgYP8A4x82pIQ3N+EDz/RJY/sXtR5nXwzm5zAkZS2DMB1oB8DcfkrvD8QWNY2kJqGS0gTIIlxdzANtrAlQuwTu8GsZDcttyNjlMWPzGy5Uq1B/V5ZOeCzZuUgyRIFgfPzVuXoyLdfiDnmdg0tcQLwXzMzqco8imVvaOaXNpDK6SASRcyZc4QY7pjyQerVYMpkgmZvIJiInYRsqjMa1ptWcQNnOdEA8pTjG+WJsuMzuec1MB2SRaAN8783MH93V3C8PbBFSoGtIMNboXNNtDeNB42Qd2IBL87yS8AGDcmZyjp002SYLAglok3JmwGgHqPRJ8EkeJrsFXNSaYYAWgiZOW7n87z6KlUdYj2cO94kz7u0DbX4I1S4e5xEg3N2kRIEQTtkvquVGtfMMaC0OsN72J6W2FhdUphtZRwdHOG5RkcPedIiw7vdOh1ubIhSpt9oXZQ5okN0toMx5zcD1VfC0KrX2b3APIXkRB52RbhWCL3uaASzvAvAMg5SW5Rr73jYlJyt9yokNGkG1Gkg+ZyzBkZpmLeOytGq0ODg5hLO/k1Lue34Y9CquLpVSDAMiIO/eNtNdo8U2rhAJcWkQIF5ItqPL5hQnzyUi8xwLA+SRliAHDKRqQYi0R4qOrBEiXQDLgDY6NB53/wByptrVR3J7rjAa7ObiIdoC3bSykp1A2QXC8G8tnlljQnZXYENVsgOc8h1jobRdxttM/sKWkC8CmACXHMYBMQNeuvxVTH1XCHzAvlBaQcotc7n43VajiXAzmLSRBI28Y0R3QrD44Y8j2sCPdBEC7TAd3d5Hn1XKWFZmz5gSw+6YAbLpdrBif9yq4TG1pDQ5gZl7ovsIBA5qaox1MZng676QT68lk20yuC5Qp0w7PBILXNaDo0aanlpeVKakkSAbbD3g0CAekmdtD1QzEYo6RfUx7rZBkEjU6SU1mJdPQCDJsXEG/h66KHYWEjUbmtIDRcbHkTO079AmYriDqjTeQZkARDgQLwb7fsIeMYRmOsiOUA7W5fRNNe8uIgH3TEEn7w5Gd0+75CzUcIwLnmajHMghw0uZgjexj5LRtaBbks1wnGVj7oZlsLyDHPed0X+1VAL5fT9VomkWgiAut8UN+1v6en6pDFu6fFNSQBSeq6DyIQwYgnUBS0ySdPiiwLpf4Jpf0UJd+5SlMCXOEvaqOUsyAJPaBd9ooCPFNhKgss5gkq8FJG0VmGqOcKoa+HFzgGHUN9pAjQWaHWOvzV7h+EirkGX+dNWndumR4Gx90tmy4kq2ogoYKhSMtIMiwOgIeI7zRaReD4KsPYhjM1FhgODyGiSWRBHKRquJKAZNTxdOmbYelJGaQ0C06Kt9qpvzZaQbIja4cOUWI2ISSUv2JFg1O8QBtlvcN37g8OZ3KhbVAdmBdYDNoDLeXIJJJLuN9ySrVJMz3ZyfxTBMk76fJW8C9zWNeTreBzYLfL96JJIik+4kdoAPLXZic8yCBAzeB58oSDQ7Nd1t9zERJM2v8F1JQUC8U9weQ7vZepuNALb3F119YZgRIBFxrGwjz+aSS1j2EXeEszMkwTJsbDYfuyO4SgxrS5rQCREXIIaLA3SSWbbs0QL4nw40nmo4guJJ7sgA7gDYANgJ1d7MkOaSTLtdwJ3uQupKJN2JoFYjIwDLMHvAQJAIuJ6HToq7K090gGBMgAT4riS1RLE9wblcALt7wiAZJjedPmrGGrAua3I0k2JdfvHvCOQixSSQwNDg8DRHdbTI653jrsfRXsLgmMHdL9ZMvJ11iUklFmqF7YH7tt5ubruEqNc4jLHh9Ekk4rklvkIjDN1l1/DYSnDD6Bvjc7bx1SSV+ShUnEENNxzOqs1qGXfVJJNEkRallXUlQzkJQupJiEAkkkgR/9k=) no-repeat center;
  box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
}
.login-html{
  width:100%;
  height:100%;
  position:absolute;
  padding:90px 70px 50px 70px;
  background:rgba(40,57,101,.9);
}
.login-html .sign-in-htm,
.login-html .sign-up-htm{
  top:0;
  left:0;
  right:0;
  bottom:0;
  position:absolute;
  -webkit-transform:rotateY(180deg);
          transform:rotateY(180deg);
  -webkit-backface-visibility:hidden;
          backface-visibility:hidden;
  transition:all .4s linear;
}
.login-html .sign-in,
.login-html .sign-up,
.login-form .group .check{
  display:none;
}
.login-html .tab,
.login-form .group .label,
.login-form .group .button{
  text-transform:uppercase;
}
.login-html .tab{
  font-size:22px;
  margin-right:15px;
  padding-bottom:5px;
  margin:0 15px 10px 0;
  display:inline-block;
  border-bottom:2px solid transparent;
}
.login-html .sign-in:checked + .tab,
.login-html .sign-up:checked + .tab{
  color:#fff;
  border-color:#1161ee;
}
.login-form{
  min-height:345px;
  position:relative;
  -webkit-perspective:1000px;
          perspective:1000px;
  -webkit-transform-style:preserve-3d;
          transform-style:preserve-3d;
}
.login-form .group{
  margin-bottom:15px;
}
.login-form .group .label,
.login-form .group .input,
.login-form .group .button{
  width:100%;
  color:#fff;
  display:block;
}
.login-form .group .input,
.login-form .group .button{
  border:none;
  padding:15px 20px;
  border-radius:25px;
  background:rgba(255,255,255,.1);
}
.login-form .group input[data-type="password"]{
  text-security:circle;
  -webkit-text-security:circle;
}
.login-form .group .label{
  color:#aaa;
  font-size:12px;
}
.login-form .group .button{
  background:#1161ee;
}
.login-form .group label .icon{
  width:15px;
  height:15px;
  border-radius:2px;
  position:relative;
  display:inline-block;
  background:rgba(255,255,255,.1);
}
.login-form .group label .icon:before,
.login-form .group label .icon:after{
  content:'';
  width:10px;
  height:2px;
  background:#fff;
  position:absolute;
  transition:all .2s ease-in-out 0s;
}
.login-form .group label .icon:before{
  left:3px;
  width:5px;
  bottom:6px;
  -webkit-transform:scale(0) rotate(0);
          transform:scale(0) rotate(0);
}
.login-form .group label .icon:after{
  top:6px;
  right:0;
  -webkit-transform:scale(0) rotate(0);
          transform:scale(0) rotate(0);
}
.login-form .group .check:checked + label{
  color:#fff;
}
.login-form .group .check:checked + label .icon{
  background:#1161ee;
}
.login-form .group .check:checked + label .icon:before{
  -webkit-transform:scale(1) rotate(45deg);
          transform:scale(1) rotate(45deg);
}
.login-form .group .check:checked + label .icon:after{
  -webkit-transform:scale(1) rotate(-45deg);
          transform:scale(1) rotate(-45deg);
}
.login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
  -webkit-transform:rotate(0);
          transform:rotate(0);
}
.login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
  -webkit-transform:rotate(0);
          transform:rotate(0);
}
.hr{
  height:2px;
  margin:60px 0 50px 0;
  background:rgba(255,255,255,.2);
}
.foot-lnk{
  text-align:center;
}
</style>
</body>
</html>
