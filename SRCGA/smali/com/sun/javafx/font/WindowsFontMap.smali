.class Lcom/sun/javafx/font/WindowsFontMap;
.super Ljava/lang/Object;
.source "WindowsFontMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;
    }
.end annotation


# static fields
.field static platformFontMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/WindowsFontMap;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findFontFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "lcName":Ljava/lang/String;
    move v1, p1

    .local v1, "style":I
    sget-object v6, Lcom/sun/javafx/font/WindowsFontMap;->platformFontMap:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 139
    invoke-static {}, Lcom/sun/javafx/font/WindowsFontMap;->populateHardcodedFileNameMap()Ljava/util/HashMap;

    move-result-object v6

    sput-object v6, Lcom/sun/javafx/font/WindowsFontMap;->platformFontMap:Ljava/util/HashMap;

    .line 142
    :cond_0
    sget-object v6, Lcom/sun/javafx/font/WindowsFontMap;->platformFontMap:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sun/javafx/font/WindowsFontMap;->platformFontMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 143
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    .line 222
    .end local v0    # "lcName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 146
    .restart local v0    # "lcName":Ljava/lang/String;
    :cond_2
    move-object v6, v0

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v2, v6

    .line 147
    .local v2, "spaceIndex":I
    move-object v6, v0

    move-object v3, v6

    .line 148
    .local v3, "firstWord":Ljava/lang/String;
    move v6, v2

    if-lez v6, :cond_3

    .line 149
    move-object v6, v0

    const/4 v7, 0x0

    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 152
    :cond_3
    sget-object v6, Lcom/sun/javafx/font/WindowsFontMap;->platformFontMap:Ljava/util/HashMap;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;

    move-object v4, v6

    .line 153
    .local v4, "fd":Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;
    move-object v6, v4

    if-nez v6, :cond_4

    .line 154
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 166
    :cond_4
    const/4 v6, 0x0

    move-object v5, v6

    .line 168
    .local v5, "file":Ljava/lang/String;
    move v6, v1

    if-gez v6, :cond_a

    .line 169
    move-object v6, v0

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 170
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    move-object v5, v6

    .line 178
    :cond_5
    :goto_1
    move-object v6, v5

    if-eqz v6, :cond_9

    .line 179
    move-object v6, v5

    invoke-static {v6}, Lcom/sun/javafx/font/WindowsFontMap;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 171
    :cond_6
    move-object v6, v0

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 172
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFileName:Ljava/lang/String;

    move-object v5, v6

    goto :goto_1

    .line 173
    :cond_7
    move-object v6, v0

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 174
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFileName:Ljava/lang/String;

    move-object v5, v6

    goto :goto_1

    .line 175
    :cond_8
    move-object v6, v0

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 176
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    move-object v5, v6

    goto :goto_1

    .line 181
    :cond_9
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 183
    :cond_a
    move-object v6, v0

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->familyName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 184
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 189
    :cond_b
    move v6, v1

    packed-switch v6, :pswitch_data_0

    .line 219
    :cond_c
    :goto_2
    move-object v6, v5

    if-eqz v6, :cond_f

    .line 220
    move-object v6, v5

    invoke-static {v6}, Lcom/sun/javafx/font/WindowsFontMap;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 191
    :pswitch_0
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    move-object v5, v6

    .line 192
    goto :goto_2

    .line 194
    :pswitch_1
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFileName:Ljava/lang/String;

    move-object v5, v6

    .line 195
    move-object v6, v5

    if-nez v6, :cond_c

    .line 196
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    move-object v5, v6

    goto :goto_2

    .line 200
    :pswitch_2
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFileName:Ljava/lang/String;

    move-object v5, v6

    .line 201
    move-object v6, v5

    if-nez v6, :cond_c

    .line 202
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    move-object v5, v6

    goto :goto_2

    .line 206
    :pswitch_3
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    move-object v5, v6

    .line 207
    move-object v6, v5

    if-nez v6, :cond_d

    .line 208
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFileName:Ljava/lang/String;

    move-object v5, v6

    .line 210
    :cond_d
    move-object v6, v5

    if-nez v6, :cond_e

    .line 211
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFileName:Ljava/lang/String;

    move-object v5, v6

    .line 213
    :cond_e
    move-object v6, v5

    if-nez v6, :cond_c

    .line 214
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    move-object v5, v6

    goto :goto_2

    .line 222
    :cond_f
    const/4 v6, 0x0

    move-object v0, v6

    goto/16 :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static getPathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "filename":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/PrismFontFactory;->getPathNameWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "filename":Ljava/lang/String;
    return-object v0
.end method

.method static populateHardcodedFileNameMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 55
    .local v0, "platformFontMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;>;"
    new-instance v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;-><init>()V

    move-object v1, v2

    .line 56
    .local v1, "fd":Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;
    move-object v2, v1

    const-string v3, "Segoe UI"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->familyName:Ljava/lang/String;

    .line 57
    move-object v2, v1

    const-string v3, "Segoe UI"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFullName:Ljava/lang/String;

    .line 58
    move-object v2, v1

    const-string v3, "segoeui.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    .line 59
    move-object v2, v1

    const-string v3, "Segoe UI Bold"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFullName:Ljava/lang/String;

    .line 60
    move-object v2, v1

    const-string v3, "segoeuib.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFileName:Ljava/lang/String;

    .line 61
    move-object v2, v1

    const-string v3, "Segoe UI Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFullName:Ljava/lang/String;

    .line 62
    move-object v2, v1

    const-string v3, "segoeuii.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFileName:Ljava/lang/String;

    .line 63
    move-object v2, v1

    const-string v3, "Segoe UI Bold Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    .line 64
    move-object v2, v1

    const-string v3, "segoeuiz.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    .line 65
    move-object v2, v0

    const-string v3, "segoe"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    new-instance v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;-><init>()V

    move-object v1, v2

    .line 68
    move-object v2, v1

    const-string v3, "Tahoma"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->familyName:Ljava/lang/String;

    .line 69
    move-object v2, v1

    const-string v3, "Tahoma"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFullName:Ljava/lang/String;

    .line 70
    move-object v2, v1

    const-string v3, "tahoma.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    .line 71
    move-object v2, v1

    const-string v3, "Tahoma Bold"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFullName:Ljava/lang/String;

    .line 72
    move-object v2, v1

    const-string v3, "tahomabd.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFileName:Ljava/lang/String;

    .line 73
    move-object v2, v0

    const-string v3, "tahoma"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    new-instance v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;-><init>()V

    move-object v1, v2

    .line 76
    move-object v2, v1

    const-string v3, "Verdana"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->familyName:Ljava/lang/String;

    .line 77
    move-object v2, v1

    const-string v3, "Verdana"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFullName:Ljava/lang/String;

    .line 78
    move-object v2, v1

    const-string v3, "verdana.TTF"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    .line 79
    move-object v2, v1

    const-string v3, "Verdana Bold"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFullName:Ljava/lang/String;

    .line 80
    move-object v2, v1

    const-string v3, "verdanab.TTF"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFileName:Ljava/lang/String;

    .line 81
    move-object v2, v1

    const-string v3, "Verdana Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFullName:Ljava/lang/String;

    .line 82
    move-object v2, v1

    const-string v3, "verdanai.TTF"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFileName:Ljava/lang/String;

    .line 83
    move-object v2, v1

    const-string v3, "Verdana Bold Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    .line 84
    move-object v2, v1

    const-string v3, "verdanaz.TTF"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    .line 85
    move-object v2, v0

    const-string v3, "verdana"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 87
    new-instance v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;-><init>()V

    move-object v1, v2

    .line 88
    move-object v2, v1

    const-string v3, "Arial"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->familyName:Ljava/lang/String;

    .line 89
    move-object v2, v1

    const-string v3, "Arial"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFullName:Ljava/lang/String;

    .line 90
    move-object v2, v1

    const-string v3, "ARIAL.TTF"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    .line 91
    move-object v2, v1

    const-string v3, "Arial Bold"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFullName:Ljava/lang/String;

    .line 92
    move-object v2, v1

    const-string v3, "ARIALBD.TTF"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFileName:Ljava/lang/String;

    .line 93
    move-object v2, v1

    const-string v3, "Arial Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFullName:Ljava/lang/String;

    .line 94
    move-object v2, v1

    const-string v3, "ARIALI.TTF"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFileName:Ljava/lang/String;

    .line 95
    move-object v2, v1

    const-string v3, "Arial Bold Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    .line 96
    move-object v2, v1

    const-string v3, "ARIALBI.TTF"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    .line 97
    move-object v2, v0

    const-string v3, "arial"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 99
    new-instance v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;-><init>()V

    move-object v1, v2

    .line 100
    move-object v2, v1

    const-string v3, "Times New Roman"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->familyName:Ljava/lang/String;

    .line 101
    move-object v2, v1

    const-string v3, "Times New Roman"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFullName:Ljava/lang/String;

    .line 102
    move-object v2, v1

    const-string v3, "times.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    .line 103
    move-object v2, v1

    const-string v3, "Times New Roman Bold"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFullName:Ljava/lang/String;

    .line 104
    move-object v2, v1

    const-string v3, "timesbd.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFileName:Ljava/lang/String;

    .line 105
    move-object v2, v1

    const-string v3, "Times New Roman Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFullName:Ljava/lang/String;

    .line 106
    move-object v2, v1

    const-string v3, "timesi.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFileName:Ljava/lang/String;

    .line 107
    move-object v2, v1

    const-string v3, "Times New Roman Bold Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    .line 108
    move-object v2, v1

    const-string v3, "timesbi.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    .line 109
    move-object v2, v0

    const-string v3, "times"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    new-instance v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;-><init>()V

    move-object v1, v2

    .line 113
    move-object v2, v1

    const-string v3, "Courier New"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->familyName:Ljava/lang/String;

    .line 114
    move-object v2, v1

    const-string v3, "Courier New"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFullName:Ljava/lang/String;

    .line 115
    move-object v2, v1

    const-string v3, "cour.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->plainFileName:Ljava/lang/String;

    .line 116
    move-object v2, v1

    const-string v3, "Courier New Bold"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFullName:Ljava/lang/String;

    .line 117
    move-object v2, v1

    const-string v3, "courbd.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldFileName:Ljava/lang/String;

    .line 118
    move-object v2, v1

    const-string v3, "Courier New Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFullName:Ljava/lang/String;

    .line 119
    move-object v2, v1

    const-string v3, "couri.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->italicFileName:Ljava/lang/String;

    .line 120
    move-object v2, v1

    const-string v3, "Courier New Bold Italic"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFullName:Ljava/lang/String;

    .line 121
    move-object v2, v1

    const-string v3, "courbi.ttf"

    iput-object v3, v2, Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;->boldItalicFileName:Ljava/lang/String;

    .line 122
    move-object v2, v0

    const-string v3, "courier"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 124
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "platformFontMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sun/javafx/font/WindowsFontMap$FamilyDescription;>;"
    return-object v0
.end method
