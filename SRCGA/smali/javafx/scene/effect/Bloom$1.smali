.class Ljavafx/scene/effect/Bloom$1;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Bloom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/Bloom;->thresholdProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/Bloom;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/Bloom;D)V
    .locals 8

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Bloom;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/effect/Bloom$1;->this$0:Ljavafx/scene/effect/Bloom;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Bloom$1;->this$0:Ljavafx/scene/effect/Bloom;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Bloom$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom$1;
    const-string v1, "threshold"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Bloom$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Bloom$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Bloom$1;->this$0:Ljavafx/scene/effect/Bloom;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/Bloom;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 154
    return-void
.end method
