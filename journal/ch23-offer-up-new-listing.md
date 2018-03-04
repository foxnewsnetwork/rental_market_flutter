# OfferUp New Listing Flow

Offer-up is the popular service where users use their phones to buy and sell local furniture. Think of it like airbnb for furniture and stuff. Since I'm just building an unapologetic clone of offer-up, it makes sense for me to study its work flow.

![](./assets/ch23/launch-flow__offerup.png)

## First Time Guide

Offer-up provides an extremely helpful how-to overlay for first time users:

![](https://lh3.googleusercontent.com/r0mk4lvsRwG2OKRIhWRcPZzteuF5lDMzREMBtYkGIWDFDAbvWYUs9rpr2fw_8I7ftxWV2pmVQEIVfKrm82bAzUp9OrQX2UMC7R_4fqY5IAcBjm7RRYPUiPyNGTS6E48ammfuG4iE4oHuxKgUOfgCPW88egHzb61y3EXq8s2jhatazm6X2In1vzSBjpIkabj8sL-4jhKwaLJgLM50p5oEkQD0A8J8p8eMCrzT-7DuqySqXDgvaqfpFYEre0xzCEFxHrI_SyCMTWn1HDgwdPJlsu7X951SrvlylUmNv3lILLvIDsXxJpSdUk0LdTBNR5bj27cMWfRL8Y7crVOIJSX-w6Xyc0NrSgviJklXDKdALdvA0jiOOxSJiAOb4dqCr7FU7Gx57CV1uh4NylsBJND5EnOPBaAyaxwUR7fIav7YcNnpX3RsJeE4nFE_bxkacN-R71D-EF5wJoWUWiNs7YsIdkSpBjsmm6Kr__iCR8R3Qji5CGWAVcyGCRo6_5FmaJ53Gr17Ce36dXaH0nVlEae6OncKG4waTWMPoI_2fdyupSJ2kTbbRkO9xZmvlKICjXMQrscUknChCTdUUmQpCBrveOQ05tfA0hmT3kCLDhUJpq0mxjwGBX_vVGDFjgUaKocALgOVdV-_WnZTe_KUNisGygK_ZqPAIPil=w495-h880-no)

Notice the following positives

- The overlay shows up for first time users
- it is extremely helpful for first-timers since the camera icon is not intuitive as the go-to for taking a picture

However, there are some negatives

- You have the dismiss the overlay by clicking "I got it"
- I should be able to just press the camera icon through the overlay (this is probably an engineering improvement)

## Post Offer

After clicking the camera, we are taken to the new-offer overview page

![](https://lh3.googleusercontent.com/ge7bDer9yLjgaVqMTqSYMhFrNxmmYiLBOFLFXlmKcVAVc_rQoCi1fy_GL4HYgqb9DWOjQK34NvrX2NiUE5TdaECupAUbF_dH73_AAZLWrfUAy8fk8DO5GRQXsrdh9XJ_QG7GWX-1HNBKQYhxd7CJzNRhlgTraKXU4TEOxa7Ub4oGN98lKRzSO-XnY3yE9Of_97ZpMZSz_UYImYB2ekbDuM9Gw2TTkPFnjWYKvs360xXIzj14UBLNROAm8ZYscFOA5E0uZvSpjeX99sqR0S_71zlfH3Axi7CIjeBp5lyFYkXfNF4xFBieD4O7f8w9gMpngjR595B8kCNvLeUNbhoOXf3gIyzcJlkN4uKVcDylkWtkahyKCqq_ikQvJqLqc4qqiuLEurNqX5G1H2ut7RlnUWYP1te9OAl5I16Akj5hOXWNMkmm75a7sMNljU6gbmr_SbRwzhmrBJEtXb3sMtA8NGDXzb0FD8Tu21Jbvhv8TkC9-gEf_G6ud2g6Q8ntDpaGa3HyDZPd9TtCDE1ovS0zTBo10Z97wz-0pTdugZClATWDT1qhHWWM6vJIewv9LLL8ktrdL-JqXQAsxgiGl045TDRIR9AEP31amiI19wWrnzX8YSngAgvzNxkymDOAbaPInPMBvMa-Wc4grWTF2TL9LpJc8o_NGPAu=w495-h880-no)

The design of the page presents some noticeables

- Progress is visible on the bottom
  - this bar is bigger and more illustrative
  - personally, I think this is better than airbnb's since I, as the user, get a better feeling of how much work is involved and will therefore be less surprised

- There are two secondary (ghost) buttons
- The primary action is the "next" button at the bottom
- Title is required immediately on the first page

I have several concerns with the picture-first pattern as implemented by offer-up

- As an user, if I don't have what I want to sell on-hand, I can't make create a draft and finish it later
- I may not remember to upload my stuff for later, which is a detriment to interaction

## Embedded Camera Gallery

Clicking "take a picture" takes the user to the camera page

![](https://lh3.googleusercontent.com/h9EZH7ZUz7iAYrqbZ60O6bhc1c3kpGUaMHvA8c_vnYC4L5oGUCJHhDtJMCjdl7g4Ju8dDpkowbrwmcx4rycoxGvPvW2loky5uw7xsf6F_knuZPLZUlQomXEPTYdI6DUK-LkzTuJL6RpNhDJtF2tw2R9lBFROIhWbVX3Lxbu52D3F5aiYzh0J96cf-FCYJYPdVfyxnuMZPC5lMtSoEMECcs5ew8vzMPalax3HgV17LDXKXW-iE-gDCuise1WZKtbQSRG0bolOrpp18ovPkhqrnsSVMfQlHic93OtIpKe5sLNS7x237CTgYW993OjZipDkvw412bfzCeGlpmypMuhwXjPLhv9FxKJeftAZaEkoUcvw0uZGhzla1xGbxjbu_gR-FIPxxUoHT7crLEzxlymBG1OcRWzM0dOjLvG3KomJyYFT2mC6gqROf6yq5zBMGhgpwwW9u-VZUyh4DKFpHznnq8fug9lpwuuvInFWRxbmdIPf6zausIE19a1lDYMCjquuxpVd_OT0eNeCtLo7GyjDdNyfLcGuMZ8FTkIBNj5qSDtaRwi2HeXkZbVBeYThvPSWroJe7sqedFIyOXUi7__WsJ4oSyjduoPn-J2-Ho7okRp0XU9nemAQgFd-MGCNkaUn5a1urMxh5XIpyEvFodBQ1A1nP78t6Ty_=w495-h880-no)

Not much to say, this page is pretty intuitive and seems to do its job well

## Description

Item description is split up into 3 sub-sections

![](https://lh3.googleusercontent.com/TCdDjJT7koEh3c--3jYZBZsxYdko260bf0gDhimZBsaUWEDPt6wTAiZW83tiUvEFQQ5gZ40U4CDyc-XAcn5hrbxg_qKKK8D7f5to7fSEAa3TikLW1CZgNDsaV57mouKjPXsMzASE8bUBEK8_bGOcyoqKmOjf4DEa19X5YWWzPeAW2OpXBeCp_LZ_tOSXwqbfuTHo4jdfErbInNcluW-wZncYyKiTJleKhK9DcKJzSpJhVKGRGnhQqC6nmGPL8Ti2NXsHBj046vyq9DDBq4187DKSs9NggYR2X-gxa6KAr7PJAvYQnRHHscRcrmLSkbvH3WoJJ7yTQmDypBR7xRph_wLf_aOrqWnBTKjo69XwTUC3ywL8obXsVYn0UgqRH196IwU20JpdXCe8gv8ELn29kvi9pAS6m49qU1ikCc4c8uUF1VETuFf2oyG7HeegRp7EYGx8eH04S86UKQ6EL2zLoKWRdTRsyi8T5Y0YAkXskaB7RGwh8TUAOy8KPPTA2DB97CZwrTHEhn-xyh8Qw1_UeTTuo0LGscQcUFJCjHOB3cUPeQzWbeR16Z4ZC3lLiQ548MWwbZmgLQWcyfwB1v1Byiz2eIT8_k_NBvXvBS4BuOA5_Ro70ZvL7MlPzpmi-hX50LGM71teNEuIDqyX1SmT9viJUuyeA60X=w495-h880-no)


- category selection
  - this seems to be intelligently populated based upon the title of your item
  - is this good UX?
    - is it easier for the user to input a name then get category suggesions?
    - or is it easier for the user to select a category and get name suggestions?
- condition
- long description

A difference from the Airbnb flow is that new offers on offer-up aren't organized as a question-and-answer dialog between the system and the user. But is this UX really actually "worse" than airbnb's?

## Price Setting

The pricing is *much* simpler on offer-up versus airbnb

![](https://lh3.googleusercontent.com/yyWN0Gehw9LlLFZcW6z2dem-SAUeHIE_YxYr9-mnIen72F1eCPxRC9Pc3c8dVnJbXm1demRbpIJsA0PxU5yqtHXsdNRAPvOBK63fFifl5liayC6mhYHZrePpnA2Ze9E5hX8zUz1YGvXRpodozePcy7VEQmYIrciOH4aR912M7hU4Sa_L5VNXLnN_WU4cuq4dZNtI3OgtyxUI1AV_qdOL8ZmXMmWyxrX_FFtbrISI-_vGFN5DVqzsGxCJfWNu31hYPAWmbwhM6qPgGeGbyVcjOW8Ft0poxYmlum3kO1OJA0TjgrAItwmjLQYuTCJ2OWn7mjjiDVKQkh7La1xQ3dRAPyYSiBzg4iG76iRov-m2OX-2ZGttLk6DlSFBF7EWhHp4pMCxEtS4UYPajldmGc34A91CzHW-QwV6tS41SQXu2pEbh2tq4eEuKK-I_cayIWRKfpBh7RXM2FCMGiF3PEYDIqnkNJGw9IcoMFhHpNTUVWDNp4eqCaem_RXyMrGj9urBr3L8VqY-HpENECwzp0cNwtsjvMo31_UxYlP3cHId0cMI7seBxBXI-5Wf7TrX2L84XFeXEusfVR-YCp03OBLADmmyRtbkKOSDHuHX1haY-YJ4YDr_1iErCXVzWlCIAr3W0BSLrxHrLPoDixd5kzZ2CFcBchEeBwGq=w495-h880-no)

Most likely, I will have to lean more towards airbnb price page than offer-ups because we are doing rentals which is, indeed, is complicated

Here is the same page with the numeric osk dismissed:
![](https://lh3.googleusercontent.com/tLOg3zhRGDOE7J3a9kgx5ckKYYrYw8suJwfRA8ePrPDPcod-9n3q7F_9ihcBF6UDcnQkUZJcfxlQRBamAEQBm0SzKwAlHdghnUZcogzlbVqPjJCEQfhj6PtMlQsogSX_n46HCYX1f1nOaDbFdo7Xk3RvtDQj-l42j9PrS6OyRS2NbXJl3KgD0KaaqEXkF3-nYhha3bc2S2eQwXDwMHcKkxwgeuPSgePFUmneQmRJLx8yx297KKvVcB1HHXoY_IwJ9vwGPhManlPhNwBqSfkvUEzKO5F7SokNFrd4OP_Tm03p9N1NveFIZa5Fr76Oe-APBVG2d5Gjt78Vq0XkJgRhCanGDaCyhBHFRA6AtY0qvGEMqIgdHByIW2ta5hgONOvDDzYzVNuw8IKFXfviP3sT7COlrEzWqCPOMekclwjNhUE1WBYA4o-qdlUrqI7khdghDu-OVUKcjzwzfYDrIeIBfGsOzSSVQRU0B1VVpcgyPEjyMdqBQwm8zaKeC6rjyyX171Ns_2Qc1pt8uM0CLqDSdVvUWyIQX8QAint6WYXWz2iqsYxRfonegTuJu78FQVNCupmqj-UNgzHPs9VmYBLMLihX-UEyW-z9sNK6a9fxoUM7tFXcCbBl6M1k9Py6vKOAz9qOGejWQAz0e1ipyg3elEUvlcnsZLEv=w495-h880-no)

## Finish Review

The last page, the finish review, combines the features of "Share" with "Location"

![](https://lh3.googleusercontent.com/3pN3zQgUFwrHPJl-gz4nzTOnN0KwTD1E5h03D4hwDmsfxJD2XVlMcN0Os6J4DiOnqmu84eIZBXl26T-tm8WKjwhd854yzU5uLsSXJGK1x_ruYvAnr7WKONf9wnFEyAosphzbUnVxBjq4sYgIjTuFFlgql-PCZwJNShNVhLCxKswjDlkqbGJafzctka-S9L65BD9OBMLhwF_bkslVAfiodQQNsHUZ8a-7Hs8YruqD3DiGs3jE800juXHh4oD5Wh6LpRYTzQI_uljD5m9VsQZ3e8tnfy6swRGGYa-BG6m7FrwOr4fgNnpQv4KTuTL26bfTzbho3mbncxSBTNZWzmNrFnhwPac12hHXwfSJwVCsWZ-Y_4H7PN_926MRzLMc_eM7kRsh-M7POX2xEpLXJX-sblaJmbjOP9BteohBg1I_NP80aEeV5ntjXFJJbquQdiZxDnNjewH02CCWllqWj2_zrt95VX3d0ka6Hq0Dp7WTcbMMlth4jjjeuLDQadAYg31xhfJfcjxlmoqp3MFOKDUGlpBFXk2dmSrvVsn3nl_mdNRQ7DJKzKsY2idWo4GOV4O0XerZPT0Q7vVhlSEIZnPWECvN7eZP5XZdk9apO5gfDIPfvGBu6_4otmF4I81LAQ4potbdLj9VcdxzbvHl26d85O61rSIIjSuo=w495-h880-no)

Pushing the "Post Item" immediately posts the item without giving the user a chance to preview the listing nor get confirmation. This is probably bad-ish UI, but it's probably fine for an app with a simple new-item creation process (and probably does help with establishing the user-base easier)

In my rental app, it would likely make more sense to have a more complicated review process like airbnb

## Location Selection

Clicking the select location leads to this page:

![](https://lh3.googleusercontent.com/y-jEGPyNfOjE4zPteQCgKjUsSQURUT5ccXiKmzD-zTPwq5R-GqntUv8V5NDbEpxumRzLMdXQWhPCUSFy3fKQNaBRjlRQpskJeUoExc4y9kNXv6FtXpvpNg1CAjJtBCngNdxrB4EiLWiQ_smB2ZklqzsbaV2ZBz0cf-OT5hRFRU890DNuPMSAFGk9OtR7165IcHeOznGSY8ozZP2WwzyoLmE9twVqBwrveaJG7icsK6MDbaWx0h95DVwfiY5b6Zf_OEXMhaZduh9WHoRKbYcsv9cKRiK2-ZeSwJ-erTv9YWi2oL-d6gjlk4Gp_It2KIHacZLs4QxdQb6CetbbSh0UnJCyQMt4h-ZSi1hWr9D0Mh7XoPafM74Z3lpqTN5He7Q0K8dODPPaLmzgz9j3GGmwryaGyygjcTJ7Rw-aEX9GZa8iciFhobv9HZQXEggB7ZZJCtYlV2nKTJ7-qwTRMuqMYKA_uQrkynSHF8uRwLIEl-ChHyQrpgtCxDn2yqzEhP1cxWYqvgaCzoWuCZQtzZAmyuZJqS5JXudstNg9BsX0laerkYo0xCQu4FJOXaDk1DzYFL9xssH8cEacqf4gmziPVUn1zLvQ-z2zcExrVnOBt020wlDDSrByIPDvH7uYSV-O64Xd-cotqpfEEEmliOtMXZar6dSllPAP=w495-h880-no)

which doesn't actually integrate with GPS, and instead just acquires a zipcode. Presumably, this is more an engineering issue than a design one

## Share

Click the share button forces the user to log into his or her facebook

![](https://lh3.googleusercontent.com/gZoSzzoaBsWSLmFv4rVXjg8J14OVOCv3WNjyVtxZpZkmh0IbObctBWDfqDA9WVlQZZ75fVBgSrCi8Zvi_TqJdGxHsd4WB5OtJoELDIB5AJ_lFc7etPGaJsJ_V5bRmKt3XZkGEBTprxBYxVMpFzg8Kk3Eii0a_w7tdG-8de0ifN3orFpY9eDtSVgGVFrj_ZYcdXJLROPMpaREL584NFL26ucRYtuajNENm4Tgei8LuJzQ-qhW65VFLCziy65np00xLm3AzOacrblASPDt6ug0QOr9BGpk8ucXx4EWv7K5daur5uxzFUI9-Wfjm1sSDIQYuID7Szbcbmkm5Z6zku1Xn0cM-7uqL4pj2CUiMTZX1NJIvRSqjXeXhr8mO0xpkOEJrUXE-CrRlLzTHNJoN2o2fxUAz0udNx6UGQvifoOsUKAIGRCCpzbYddRiELwmyp7nAQIBnob_0fyE5z6aqgk69G1Vd8V56hok4X1mciLSnfMB3IQp9D5FLUTV5fck4eHEzDXRrqs4tIc2RJfkQWgc34s3VBidyY16FDxWTecT1hVlKEgjM0M8NhIW5LrcT1Es0cKm5pHyjJqpeNvEJZ-n9cZwHBJB3l125F-CyaieAQ4XaMQ3mHi8l9RtMgrgAeZMPwvmI50aQ8iRfqxWbfOHP1yoZYUcUKRv=w495-h880-no)

I should note that it was possible to log into offer-up using either one's google or facebook credentials. This is probably expected at this point and I hardly see a point in users manually creating their offer-up only accounts

## Done page

After finishing, we are taken to the "Done" page:

![](https://lh3.googleusercontent.com/zTuAYNddHBdG_a21xD16Zd93jPa8VPuAfk2_iOoXaV7E6pIswl_QLjInlQ_dNNOxz-HM_h9VJRo8dQip1dH9_77cNJplSFnPxpRikUXDgBbXj6sAbaWUaNNAKhYnMqm8JQpyKQA8tpWREn2xF4jtyMYXrshfpbZXlgq0w09eQaXUF61c0rUm6Q1NOIblOqMpn8Xpc-qFRODofMBdzekC4ZTw2PDtkrBj9emCXEIiJJZfz8H5xbaunz1wb1NLm5Z_7BQyli4WHMLCjTcCtg8u2UUpMbFv1gJiB9JzntIZAlrQ0uZNoVb8CbUdlCn39biTvmXetzXVag8_sU8RrIorfgwuVR-TTrQYMGu9WmLHL6iBTWjloMhqfCiY5J0uTS60_Spa0FRnErvCiuFOh6LOpAXNzPt7zgEM6tXc0DS48sTXTFeY77zkAbMmzGA6fTKqozm4S-PHCzoNLQ32hVk_Q_Zp2bPt718DUwa75GRNB27LcKMgF6KgINhBixhsuuAslVAqOR6l2o_tdX6dLkhcWtK38FKVt63zaTuCYZf856CSl8Z5s0dCwfW5wntzi9VzLr1XMfwS610DRp72kGnmk18thPB7gZNdcpYzYP-pTLOTKvLhcMFPouh0DEGovoahoH1z_9Pi3D4WEOz8z96Ga0Hz-PdjudOM=w495-h880-no)

The page presents the following functionality:

- post another: makes another listing
- share: gives you another chance to advertise
- done: takes you to the listing

Personally, I think this is pretty standard a feature, although I might want to make this into a temporary header back in the new-listing overview page on rental

## My Offers page

For reference, here is the "my-offers" page:

![](https://lh3.googleusercontent.com/KDuDWdaLnBLA2frS3icvBKaCfkzZs1uHaWhfIi4x8z2UgyX6CJEV7fYlZvpu42spTNoojIY1_gon_a1ova288-TnXlKGIjIVFa4GxtS356PUxaMcCtlO9OZy-XUMsvt4qi7pjExPKHvv0bI2Cno_Etq6RrizQddCaRFmg7V4AVFTKDAPDaiH1XNWAdLtL14cYXouTvQj-hk5k7FOqSHpNytXVEGRbrwTczSQPE32HRvB4b1QSVR8jaUDxoTSctAOuK5e0chvrG5VzkZ527vS4i6GMHyKJw69mqkKHmP9aDIwTzLSX_LDsThvIdSBLbmD5MU9DG0xrVIRN0X9KqHty_CBpbNTJIXbj-h6FvWmSE_4mXqp-be5-ZZ4ai9vz5MN0jOBnvNrU0xRqSq4nZHI9Jjtxf4mkUQEkqjeecBKxRy8LNKmVf_g6TlWCoTW-yMbcNykX41cKA_xVmMXpWeIJUNohQa8opTXNgyz6Ta7Aj6g5eL2bPdDmtyAgKOMUCJNdpGzndJsiaiMpxLHhr73uDDRFzEaF8ROYWxDXM4JwFjyrd47wvoYSl_FP_wJIJtvyaTmucX3DbJS_UWzmONc975E9kMCg_-1I87hFpYa1aUO_kL-Vsnzkia5mngk3rcSfIl8ncyyH-tjDY75gtZ5TRa8RupbLl1L=w495-h880-no)

I'm not sure I agree with the design of this page; the fact there are no word labels on my offers really detriments from certain users may choose to remember and reference his or her listings

Some things to notice

- no back button (suggesting this is the master page, but it's not the home page)
- some sort of cross between material and cupertino design (probably not a good item)
