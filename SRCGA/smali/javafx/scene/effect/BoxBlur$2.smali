.class Ljavafx/scene/effect/BoxBlur$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "BoxBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/BoxBlur;->heightProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/BoxBlur;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/BoxBlur;D)V
    .locals 8

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/BoxBlur;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/effect/BoxBlur$2;->this$0:Ljavafx/scene/effect/BoxBlur;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur$2;->this$0:Ljavafx/scene/effect/BoxBlur;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur$2;
    const-string v1, "height"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur$2;->this$0:Ljavafx/scene/effect/BoxBlur;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/BoxBlur;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 214
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur$2;->this$0:Ljavafx/scene/effect/BoxBlur;

    invoke-virtual {v1}, Ljavafx/scene/effect/BoxBlur;->effectBoundsChanged()V

    .line 215
    return-void
.end method
