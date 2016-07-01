.class Ljavafx/scene/effect/GaussianBlur$1;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "GaussianBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/GaussianBlur;->radiusProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/GaussianBlur;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/GaussianBlur;D)V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/GaussianBlur;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/effect/GaussianBlur$1;->this$0:Ljavafx/scene/effect/GaussianBlur;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/GaussianBlur$1;->this$0:Ljavafx/scene/effect/GaussianBlur;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlur$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur$1;
    const-string v1, "radius"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/GaussianBlur$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/GaussianBlur$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/GaussianBlur$1;->this$0:Ljavafx/scene/effect/GaussianBlur;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/GaussianBlur;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 146
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/GaussianBlur$1;->this$0:Ljavafx/scene/effect/GaussianBlur;

    invoke-virtual {v1}, Ljavafx/scene/effect/GaussianBlur;->effectBoundsChanged()V

    .line 147
    return-void
.end method
