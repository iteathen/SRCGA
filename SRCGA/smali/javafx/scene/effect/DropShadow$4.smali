.class Ljavafx/scene/effect/DropShadow$4;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "DropShadow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/DropShadow;->blurTypeProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/effect/BlurType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/DropShadow;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/DropShadow;Ljavafx/scene/effect/BlurType;)V
    .locals 5

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/DropShadow;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/effect/BlurType;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/effect/DropShadow$4;->this$0:Ljavafx/scene/effect/DropShadow;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow$4;->this$0:Ljavafx/scene/effect/DropShadow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow$4;
    const-string v1, "blurType"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DropShadow$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DropShadow$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow$4;->this$0:Ljavafx/scene/effect/DropShadow;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/DropShadow;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 438
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DropShadow$4;->this$0:Ljavafx/scene/effect/DropShadow;

    invoke-virtual {v1}, Ljavafx/scene/effect/DropShadow;->effectBoundsChanged()V

    .line 439
    return-void
.end method
