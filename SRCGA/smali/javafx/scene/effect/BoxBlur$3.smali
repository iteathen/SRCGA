.class Ljavafx/scene/effect/BoxBlur$3;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "BoxBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/BoxBlur;->iterationsProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/BoxBlur;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/BoxBlur;I)V
    .locals 5

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/BoxBlur;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/effect/BoxBlur$3;->this$0:Ljavafx/scene/effect/BoxBlur;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur$3;->this$0:Ljavafx/scene/effect/BoxBlur;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur$3;
    const-string v1, "iterations"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/BoxBlur$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BoxBlur$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur$3;->this$0:Ljavafx/scene/effect/BoxBlur;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/BoxBlur;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 262
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/BoxBlur$3;->this$0:Ljavafx/scene/effect/BoxBlur;

    invoke-virtual {v1}, Ljavafx/scene/effect/BoxBlur;->effectBoundsChanged()V

    .line 263
    return-void
.end method
