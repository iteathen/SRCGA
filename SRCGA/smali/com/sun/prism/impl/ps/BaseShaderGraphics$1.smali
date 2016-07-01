.class synthetic Lcom/sun/prism/impl/ps/BaseShaderGraphics$1;
.super Ljava/lang/Object;
.source "BaseShaderGraphics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/ps/BaseShaderGraphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$prism$paint$Paint$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 913
    invoke-static {}, Lcom/sun/prism/paint/Paint$Type;->values()[Lcom/sun/prism/paint/Paint$Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics$1;->$SwitchMap$com$sun$prism$paint$Paint$Type:[I

    :try_start_0
    sget-object v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics$1;->$SwitchMap$com$sun$prism$paint$Paint$Type:[I

    sget-object v2, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics$1;->$SwitchMap$com$sun$prism$paint$Paint$Type:[I

    sget-object v2, Lcom/sun/prism/paint/Paint$Type;->LINEAR_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics$1;->$SwitchMap$com$sun$prism$paint$Paint$Type:[I

    sget-object v2, Lcom/sun/prism/paint/Paint$Type;->RADIAL_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/prism/impl/ps/BaseShaderGraphics$1;->$SwitchMap$com$sun$prism$paint$Paint$Type:[I

    sget-object v2, Lcom/sun/prism/paint/Paint$Type;->IMAGE_PATTERN:Lcom/sun/prism/paint/Paint$Type;

    invoke-virtual {v2}, Lcom/sun/prism/paint/Paint$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3
.end method
