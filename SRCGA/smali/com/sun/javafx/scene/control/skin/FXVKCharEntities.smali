.class Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;
.super Ljava/lang/Object;
.source "FXVKCharEntities.java"


# static fields
.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->map:Ljava/util/HashMap;

    .line 53
    const-string v0, "space"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 54
    const-string v0, "quot"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 55
    const-string v0, "apos"

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 56
    const-string v0, "amp"

    const/16 v1, 0x26

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 57
    const-string v0, "lt"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 58
    const-string v0, "gt"

    const/16 v1, 0x3e

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 59
    const-string v0, "nbsp"

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 60
    const-string v0, "iexcl"

    const/16 v1, 0xa1

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 61
    const-string v0, "cent"

    const/16 v1, 0xa2

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 62
    const-string v0, "pound"

    const/16 v1, 0xa3

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 63
    const-string v0, "curren"

    const/16 v1, 0xa4

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 64
    const-string v0, "yen"

    const/16 v1, 0xa5

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 65
    const-string v0, "brvbar"

    const/16 v1, 0xa6

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 66
    const-string v0, "sect"

    const/16 v1, 0xa7

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 67
    const-string v0, "uml"

    const/16 v1, 0xa8

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 68
    const-string v0, "copy"

    const/16 v1, 0xa9

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 69
    const-string v0, "ordf"

    const/16 v1, 0xaa

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 70
    const-string v0, "laquo"

    const/16 v1, 0xab

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 71
    const-string v0, "not"

    const/16 v1, 0xac

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 72
    const-string v0, "shy"

    const/16 v1, 0xad

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 73
    const-string v0, "reg"

    const/16 v1, 0xae

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 74
    const-string v0, "macr"

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 75
    const-string v0, "deg"

    const/16 v1, 0xb0

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 76
    const-string v0, "plusmn"

    const/16 v1, 0xb1

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 77
    const-string v0, "sup2"

    const/16 v1, 0xb2

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 78
    const-string v0, "sup3"

    const/16 v1, 0xb3

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 79
    const-string v0, "acute"

    const/16 v1, 0xb4

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 80
    const-string v0, "micro"

    const/16 v1, 0xb5

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 81
    const-string v0, "para"

    const/16 v1, 0xb6

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 82
    const-string v0, "middot"

    const/16 v1, 0xb7

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 83
    const-string v0, "cedil"

    const/16 v1, 0xb8

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 84
    const-string v0, "sup1"

    const/16 v1, 0xb9

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 85
    const-string v0, "ordm"

    const/16 v1, 0xba

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 86
    const-string v0, "raquo"

    const/16 v1, 0xbb

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 87
    const-string v0, "frac14"

    const/16 v1, 0xbc

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 88
    const-string v0, "frac12"

    const/16 v1, 0xbd

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 89
    const-string v0, "frac34"

    const/16 v1, 0xbe

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 90
    const-string v0, "iquest"

    const/16 v1, 0xbf

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 91
    const-string v0, "times"

    const/16 v1, 0xd7

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 92
    const-string v0, "divide"

    const/16 v1, 0xf7

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 94
    const-string v0, "Agrave"

    const/16 v1, 0xc0

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 95
    const-string v0, "Aacute"

    const/16 v1, 0xc1

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 96
    const-string v0, "Acirc"

    const/16 v1, 0xc2

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 97
    const-string v0, "Atilde"

    const/16 v1, 0xc3

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 98
    const-string v0, "Auml"

    const/16 v1, 0xc4

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 99
    const-string v0, "Aring"

    const/16 v1, 0xc5

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 100
    const-string v0, "AElig"

    const/16 v1, 0xc6

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 101
    const-string v0, "Ccedil"

    const/16 v1, 0xc7

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 102
    const-string v0, "Egrave"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 103
    const-string v0, "Eacute"

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 104
    const-string v0, "Ecirc"

    const/16 v1, 0xca

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 105
    const-string v0, "Euml"

    const/16 v1, 0xcb

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 106
    const-string v0, "Igrave"

    const/16 v1, 0xcc

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 107
    const-string v0, "Iacute"

    const/16 v1, 0xcd

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 108
    const-string v0, "Icirc"

    const/16 v1, 0xce

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 109
    const-string v0, "Iuml"

    const/16 v1, 0xcf

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 110
    const-string v0, "ETH"

    const/16 v1, 0xd0

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 111
    const-string v0, "Ntilde"

    const/16 v1, 0xd1

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 112
    const-string v0, "Ograve"

    const/16 v1, 0xd2

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 113
    const-string v0, "Oacute"

    const/16 v1, 0xd3

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 114
    const-string v0, "Ocirc"

    const/16 v1, 0xd4

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 115
    const-string v0, "Otilde"

    const/16 v1, 0xd5

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 116
    const-string v0, "Ouml"

    const/16 v1, 0xd6

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 117
    const-string v0, "Oslash"

    const/16 v1, 0xd8

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 118
    const-string v0, "Ugrave"

    const/16 v1, 0xd9

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 119
    const-string v0, "Uacute"

    const/16 v1, 0xda

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 120
    const-string v0, "Ucirc"

    const/16 v1, 0xdb

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 121
    const-string v0, "Uuml"

    const/16 v1, 0xdc

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 122
    const-string v0, "Yacute"

    const/16 v1, 0xdd

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 123
    const-string v0, "THORN"

    const/16 v1, 0xde

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 124
    const-string v0, "szlig"

    const/16 v1, 0xdf

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 125
    const-string v0, "agrave"

    const/16 v1, 0xe0

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 126
    const-string v0, "aacute"

    const/16 v1, 0xe1

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 127
    const-string v0, "acirc"

    const/16 v1, 0xe2

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 128
    const-string v0, "atilde"

    const/16 v1, 0xe3

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 129
    const-string v0, "auml"

    const/16 v1, 0xe4

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 130
    const-string v0, "aring"

    const/16 v1, 0xe5

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 131
    const-string v0, "aelig"

    const/16 v1, 0xe6

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 132
    const-string v0, "ccedil"

    const/16 v1, 0xe7

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 133
    const-string v0, "egrave"

    const/16 v1, 0xe8

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 134
    const-string v0, "eacute"

    const/16 v1, 0xe9

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 135
    const-string v0, "ecirc"

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 136
    const-string v0, "euml"

    const/16 v1, 0xeb

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 137
    const-string v0, "igrave"

    const/16 v1, 0xec

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 138
    const-string v0, "iacute"

    const/16 v1, 0xed

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 139
    const-string v0, "icirc"

    const/16 v1, 0xee

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 140
    const-string v0, "iuml"

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 141
    const-string v0, "eth"

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 142
    const-string v0, "ntilde"

    const/16 v1, 0xf1

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 143
    const-string v0, "ograve"

    const/16 v1, 0xf2

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 144
    const-string v0, "oacute"

    const/16 v1, 0xf3

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 145
    const-string v0, "ocirc"

    const/16 v1, 0xf4

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 146
    const-string v0, "otilde"

    const/16 v1, 0xf5

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 147
    const-string v0, "ouml"

    const/16 v1, 0xf6

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 148
    const-string v0, "oslash"

    const/16 v1, 0xf8

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 149
    const-string v0, "ugrave"

    const/16 v1, 0xf9

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 150
    const-string v0, "uacute"

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 151
    const-string v0, "ucirc"

    const/16 v1, 0xfb

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 152
    const-string v0, "uuml"

    const/16 v1, 0xfc

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 153
    const-string v0, "yacute"

    const/16 v1, 0xfd

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 154
    const-string v0, "thorn"

    const/16 v1, 0xfe

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 155
    const-string v0, "yuml"

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 157
    const-string v0, "scedil"

    const/16 v1, 0x15f

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 158
    const-string v0, "scaron"

    const/16 v1, 0x161

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 159
    const-string v0, "ycirc"

    const/16 v1, 0x177

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 160
    const-string v0, "ymacron"

    const/16 v1, 0x233

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 161
    const-string v0, "pi"

    const/16 v1, 0x3c0

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 162
    const-string v0, "sigma"

    const/16 v1, 0x3c3

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 163
    const-string v0, "ygrave"

    const/16 v1, 0x1ef3

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 164
    const-string v0, "yhook"

    const/16 v1, 0x1ef7

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 165
    const-string v0, "permil"

    const/16 v1, 0x2030

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 166
    const-string v0, "euro"

    const/16 v1, 0x20ac

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 167
    const-string v0, "tm"

    const/16 v1, 0x2122

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 168
    const-string v0, "neq"

    const/16 v1, 0x2260

    invoke-static {v0, v1}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->put(Ljava/lang/String;I)V

    .line 169
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->map:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    move-object v1, v2

    .line 38
    .local v1, "c":Ljava/lang/Character;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 39
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 42
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 44
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private static put(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move v1, p1

    .local v1, "decimalChar":I
    sget-object v2, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->map:Ljava/util/HashMap;

    move-object v3, v0

    move v4, v1

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    return-void
.end method
