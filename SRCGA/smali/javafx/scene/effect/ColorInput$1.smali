.class Ljavafx/scene/effect/ColorInput$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ColorInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/ColorInput;->paintProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/ColorInput;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/ColorInput;Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/ColorInput;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/paint/Paint;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/effect/ColorInput$1;->this$0:Ljavafx/scene/effect/ColorInput;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput$1;->this$0:Ljavafx/scene/effect/ColorInput;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput$1;
    const-string v1, "paint"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorInput$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorInput$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorInput$1;->this$0:Ljavafx/scene/effect/ColorInput;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/ColorInput;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 112
    return-void
.end method
