.class public final enum Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;
.super Ljava/lang/Enum;
.source "BaseShaderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/ps/BaseShaderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialShaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

.field public static final enum SUPER:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

.field public static final enum TEXTURE_First_LCD:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

.field public static final enum TEXTURE_MASK_RGB:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

.field public static final enum TEXTURE_RGB:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

.field public static final enum TEXTURE_SECOND_LCD:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

.field public static final enum TEXTURE_YV12:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 137
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "TEXTURE_RGB"

    const/4 v3, 0x0

    const-string v4, "Solid_TextureRGB"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_RGB:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    .line 138
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "TEXTURE_MASK_RGB"

    const/4 v3, 0x1

    const-string v4, "Mask_TextureRGB"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_MASK_RGB:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    .line 139
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "TEXTURE_YV12"

    const/4 v3, 0x2

    const-string v4, "Solid_TextureYV12"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_YV12:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    .line 140
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "TEXTURE_First_LCD"

    const/4 v3, 0x3

    const-string v4, "Solid_TextureFirstPassLCD"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_First_LCD:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    .line 141
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "TEXTURE_SECOND_LCD"

    const/4 v3, 0x4

    const-string v4, "Solid_TextureSecondPassLCD"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_SECOND_LCD:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    .line 142
    new-instance v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "SUPER"

    const/4 v3, 0x5

    const-string v4, "Mask_TextureSuper"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->SUPER:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    .line 136
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_RGB:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_MASK_RGB:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_YV12:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_First_LCD:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_SECOND_LCD:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->SUPER:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->$VALUES:[Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

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
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->name:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->$VALUES:[Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    invoke-virtual {v0}, [Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;
    return-object v0
.end method
