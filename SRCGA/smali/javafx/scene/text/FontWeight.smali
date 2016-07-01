.class public final enum Ljavafx/scene/text/FontWeight;
.super Ljava/lang/Enum;
.source "FontWeight.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/text/FontWeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/text/FontWeight;

.field public static final enum BLACK:Ljavafx/scene/text/FontWeight;

.field public static final enum BOLD:Ljavafx/scene/text/FontWeight;

.field public static final enum EXTRA_BOLD:Ljavafx/scene/text/FontWeight;

.field public static final enum EXTRA_LIGHT:Ljavafx/scene/text/FontWeight;

.field public static final enum LIGHT:Ljavafx/scene/text/FontWeight;

.field public static final enum MEDIUM:Ljavafx/scene/text/FontWeight;

.field public static final enum NORMAL:Ljavafx/scene/text/FontWeight;

.field public static final enum SEMI_BOLD:Ljavafx/scene/text/FontWeight;

.field public static final enum THIN:Ljavafx/scene/text/FontWeight;


# instance fields
.field private final names:[Ljava/lang/String;

.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 42
    new-instance v0, Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "THIN"

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "Thin"

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/text/FontWeight;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontWeight;->THIN:Ljavafx/scene/text/FontWeight;

    .line 47
    new-instance v0, Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "EXTRA_LIGHT"

    const/4 v3, 0x1

    const/16 v4, 0xc8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "Extra Light"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string v8, "Ultra Light"

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/text/FontWeight;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontWeight;->EXTRA_LIGHT:Ljavafx/scene/text/FontWeight;

    .line 52
    new-instance v0, Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "LIGHT"

    const/4 v3, 0x2

    const/16 v4, 0x12c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "Light"

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/text/FontWeight;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontWeight;->LIGHT:Ljavafx/scene/text/FontWeight;

    .line 57
    new-instance v0, Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "NORMAL"

    const/4 v3, 0x3

    const/16 v4, 0x190

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "Normal"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string v8, "Regular"

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/text/FontWeight;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    .line 62
    new-instance v0, Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "MEDIUM"

    const/4 v3, 0x4

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "Medium"

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/text/FontWeight;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontWeight;->MEDIUM:Ljavafx/scene/text/FontWeight;

    .line 67
    new-instance v0, Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "SEMI_BOLD"

    const/4 v3, 0x5

    const/16 v4, 0x258

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "Semi Bold"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string v8, "Demi Bold"

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/text/FontWeight;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontWeight;->SEMI_BOLD:Ljavafx/scene/text/FontWeight;

    .line 72
    new-instance v0, Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "BOLD"

    const/4 v3, 0x6

    const/16 v4, 0x2bc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "Bold"

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/text/FontWeight;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontWeight;->BOLD:Ljavafx/scene/text/FontWeight;

    .line 77
    new-instance v0, Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "EXTRA_BOLD"

    const/4 v3, 0x7

    const/16 v4, 0x320

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "Extra Bold"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string v8, "Ultra Bold"

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/text/FontWeight;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontWeight;->EXTRA_BOLD:Ljavafx/scene/text/FontWeight;

    .line 82
    new-instance v0, Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const-string v2, "BLACK"

    const/16 v3, 0x8

    const/16 v4, 0x384

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "Black"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string v8, "Heavy"

    aput-object v8, v6, v7

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/text/FontWeight;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/text/FontWeight;->BLACK:Ljavafx/scene/text/FontWeight;

    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [Ljavafx/scene/text/FontWeight;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/text/FontWeight;->THIN:Ljavafx/scene/text/FontWeight;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/text/FontWeight;->EXTRA_LIGHT:Ljavafx/scene/text/FontWeight;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/text/FontWeight;->LIGHT:Ljavafx/scene/text/FontWeight;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/text/FontWeight;->MEDIUM:Ljavafx/scene/text/FontWeight;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/text/FontWeight;->SEMI_BOLD:Ljavafx/scene/text/FontWeight;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x6

    sget-object v3, Ljavafx/scene/text/FontWeight;->BOLD:Ljavafx/scene/text/FontWeight;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x7

    sget-object v3, Ljavafx/scene/text/FontWeight;->EXTRA_BOLD:Ljavafx/scene/text/FontWeight;

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/16 v2, 0x8

    sget-object v3, Ljavafx/scene/text/FontWeight;->BLACK:Ljavafx/scene/text/FontWeight;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/text/FontWeight;->$VALUES:[Ljavafx/scene/text/FontWeight;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/FontWeight;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "weight":I
    move-object v4, p4

    .local v4, "names":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljavafx/scene/text/FontWeight;->weight:I

    .line 89
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/text/FontWeight;->names:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static findByName(Ljava/lang/String;)Ljavafx/scene/text/FontWeight;
    .locals 11

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v9, v0

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 115
    .end local v0    # "name":Ljava/lang/String;
    .local v4, "w":Ljavafx/scene/text/FontWeight;
    .local v8, "n":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 109
    .end local v4    # "w":Ljavafx/scene/text/FontWeight;
    .end local v8    # "n":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljavafx/scene/text/FontWeight;->values()[Ljavafx/scene/text/FontWeight;

    move-result-object v9

    move-object v1, v9

    move-object v9, v1

    array-length v9, v9

    move v2, v9

    const/4 v9, 0x0

    move v3, v9

    :goto_1
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_3

    move-object v9, v1

    move v10, v3

    aget-object v9, v9, v10

    move-object v4, v9

    .line 110
    .restart local v4    # "w":Ljavafx/scene/text/FontWeight;
    move-object v9, v4

    iget-object v9, v9, Ljavafx/scene/text/FontWeight;->names:[Ljava/lang/String;

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 111
    .restart local v8    # "n":Ljava/lang/String;
    move-object v9, v8

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v4

    move-object v0, v9

    goto :goto_0

    .line 110
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 109
    .end local v8    # "n":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 115
    .end local v4    # "w":Ljavafx/scene/text/FontWeight;
    :cond_3
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0
.end method

.method public static findByWeight(I)Ljavafx/scene/text/FontWeight;
    .locals 3

    .prologue
    .line 130
    move v0, p0

    .local v0, "weight":I
    move v1, v0

    const/16 v2, 0x96

    if-gt v1, v2, :cond_0

    .line 131
    sget-object v1, Ljavafx/scene/text/FontWeight;->THIN:Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    .line 147
    .end local v0    # "weight":I
    :goto_0
    return-object v0

    .line 132
    .restart local v0    # "weight":I
    :cond_0
    move v1, v0

    const/16 v2, 0xfa

    if-gt v1, v2, :cond_1

    .line 133
    sget-object v1, Ljavafx/scene/text/FontWeight;->EXTRA_LIGHT:Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    goto :goto_0

    .line 134
    :cond_1
    move v1, v0

    const/16 v2, 0x15e

    if-ge v1, v2, :cond_2

    .line 135
    sget-object v1, Ljavafx/scene/text/FontWeight;->LIGHT:Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_2
    move v1, v0

    const/16 v2, 0x1c2

    if-gt v1, v2, :cond_3

    .line 137
    sget-object v1, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    goto :goto_0

    .line 138
    :cond_3
    move v1, v0

    const/16 v2, 0x226

    if-gt v1, v2, :cond_4

    .line 139
    sget-object v1, Ljavafx/scene/text/FontWeight;->MEDIUM:Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    goto :goto_0

    .line 140
    :cond_4
    move v1, v0

    const/16 v2, 0x28a

    if-ge v1, v2, :cond_5

    .line 141
    sget-object v1, Ljavafx/scene/text/FontWeight;->SEMI_BOLD:Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    goto :goto_0

    .line 142
    :cond_5
    move v1, v0

    const/16 v2, 0x2ee

    if-gt v1, v2, :cond_6

    .line 143
    sget-object v1, Ljavafx/scene/text/FontWeight;->BOLD:Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    goto :goto_0

    .line 144
    :cond_6
    move v1, v0

    const/16 v2, 0x352

    if-gt v1, v2, :cond_7

    .line 145
    sget-object v1, Ljavafx/scene/text/FontWeight;->EXTRA_BOLD:Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    goto :goto_0

    .line 147
    :cond_7
    sget-object v1, Ljavafx/scene/text/FontWeight;->BLACK:Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/text/FontWeight;
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/text/FontWeight;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/FontWeight;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/text/FontWeight;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Ljavafx/scene/text/FontWeight;->$VALUES:[Ljavafx/scene/text/FontWeight;

    invoke-virtual {v0}, [Ljavafx/scene/text/FontWeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/text/FontWeight;

    return-object v0
.end method


# virtual methods
.method public getWeight()I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/FontWeight;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/text/FontWeight;->weight:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/FontWeight;
    return v0
.end method
