.class public final enum Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
.super Ljava/lang/Enum;
.source "BaseShaderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/ps/BaseShaderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum ALPHA_ONE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum ALPHA_TEXTURE_DIFF:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum DRAW_CIRCLE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum DRAW_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum DRAW_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum DRAW_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum DRAW_SEMIROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum FILL_CIRCLE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum FILL_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum FILL_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum FILL_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum SOLID:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field public static final enum TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;


# instance fields
.field private filltype:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

.field private name:Ljava/lang/String;

.field private newPaintStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 86
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "SOLID"

    const/4 v3, 0x0

    const-string v4, "Solid"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->SOLID:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 87
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "TEXTURE"

    const/4 v3, 0x1

    const-string v4, "Texture"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 88
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "ALPHA_ONE"

    const/4 v3, 0x2

    const-string v4, "AlphaOne"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_ONE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 89
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "ALPHA_TEXTURE"

    const/4 v3, 0x3

    const-string v4, "AlphaTexture"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 90
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "ALPHA_TEXTURE_DIFF"

    const/4 v3, 0x4

    const-string v4, "AlphaTextureDifference"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE_DIFF:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 91
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "FILL_PGRAM"

    const/4 v3, 0x5

    const-string v4, "FillPgram"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 92
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "DRAW_PGRAM"

    const/4 v3, 0x6

    const-string v4, "DrawPgram"

    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 93
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "FILL_CIRCLE"

    const/4 v3, 0x7

    const-string v4, "FillCircle"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_CIRCLE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 94
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "DRAW_CIRCLE"

    const/16 v3, 0x8

    const-string v4, "DrawCircle"

    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_CIRCLE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_CIRCLE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 95
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "FILL_ELLIPSE"

    const/16 v3, 0x9

    const-string v4, "FillEllipse"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 96
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "DRAW_ELLIPSE"

    const/16 v3, 0xa

    const-string v4, "DrawEllipse"

    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 97
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "FILL_ROUNDRECT"

    const/16 v3, 0xb

    const-string v4, "FillRoundRect"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 98
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "DRAW_ROUNDRECT"

    const/16 v3, 0xc

    const-string v4, "DrawRoundRect"

    sget-object v5, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 99
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "DRAW_SEMIROUNDRECT"

    const/16 v3, 0xd

    const-string v4, "DrawSemiRoundRect"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_SEMIROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 85
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->SOLID:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_ONE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE_DIFF:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_PGRAM:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_CIRCLE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_CIRCLE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ELLIPSE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->FILL_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_ROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->DRAW_SEMIROUNDRECT:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->$VALUES:[Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, p4

    .local v4, "filltype":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->name:Ljava/lang/String;

    .line 113
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->filltype:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    .line 114
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move v4, p4

    .local v4, "newstyle":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->name:Ljava/lang/String;

    .line 109
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->newPaintStyle:Z

    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->$VALUES:[Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    invoke-virtual {v0}, [Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    return-object v0
.end method


# virtual methods
.method public getFillType()Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->filltype:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    return-object v0
.end method

.method public isNewPaintStyle()Z
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->newPaintStyle:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    return v0
.end method
