.class synthetic Lcom/sun/javafx/sg/prism/NodeEffectInput$1;
.super Ljava/lang/Object;
.source "NodeEffectInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NodeEffectInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$javafx$sg$prism$NodeEffectInput$RenderType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 199
    invoke-static {}, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->values()[Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/sg/prism/NodeEffectInput$1;->$SwitchMap$com$sun$javafx$sg$prism$NodeEffectInput$RenderType:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/sg/prism/NodeEffectInput$1;->$SwitchMap$com$sun$javafx$sg$prism$NodeEffectInput$RenderType:[I

    sget-object v2, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->EFFECT_CONTENT:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/sg/prism/NodeEffectInput$1;->$SwitchMap$com$sun$javafx$sg$prism$NodeEffectInput$RenderType:[I

    sget-object v2, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->FULL_CONTENT:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/sg/prism/NodeEffectInput$1;->$SwitchMap$com$sun$javafx$sg$prism$NodeEffectInput$RenderType:[I

    sget-object v2, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->CLIPPED_CONTENT:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
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
.end method
