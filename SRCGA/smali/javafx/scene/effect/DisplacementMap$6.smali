.class Ljavafx/scene/effect/DisplacementMap$6;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "DisplacementMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/DisplacementMap;->wrapProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/DisplacementMap;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/DisplacementMap;)V
    .locals 4

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMap$6;->this$0:Ljavafx/scene/effect/DisplacementMap;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap$6;->this$0:Ljavafx/scene/effect/DisplacementMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$6;
    const-string v1, "wrap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/DisplacementMap$6;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/DisplacementMap$6;->this$0:Ljavafx/scene/effect/DisplacementMap;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/DisplacementMap;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 455
    return-void
.end method
