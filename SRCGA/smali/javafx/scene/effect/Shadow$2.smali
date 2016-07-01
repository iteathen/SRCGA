.class Ljavafx/scene/effect/Shadow$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Shadow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/Shadow;->widthProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/Shadow;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/Shadow;D)V
    .locals 8

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Shadow;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/effect/Shadow$2;->this$0:Ljavafx/scene/effect/Shadow;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Shadow$2;->this$0:Ljavafx/scene/effect/Shadow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Shadow$2;
    const-string v1, "width"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Shadow$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 7

    .prologue
    .line 230
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Shadow$2;
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/Shadow$2;->this$0:Ljavafx/scene/effect/Shadow;

    invoke-virtual {v4}, Ljavafx/scene/effect/Shadow;->getWidth()D

    move-result-wide v4

    move-wide v2, v4

    .line 231
    .local v2, "localWidth":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/Shadow$2;->this$0:Ljavafx/scene/effect/Shadow;

    invoke-static {v4}, Ljavafx/scene/effect/Shadow;->access$000(Ljavafx/scene/effect/Shadow;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/Shadow$2;->this$0:Ljavafx/scene/effect/Shadow;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljavafx/scene/effect/Shadow;->access$002(Ljavafx/scene/effect/Shadow;Z)Z

    move-result v4

    .line 233
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/Shadow$2;->this$0:Ljavafx/scene/effect/Shadow;

    move-wide v5, v2

    invoke-static {v4, v5, v6}, Ljavafx/scene/effect/Shadow;->access$200(Ljavafx/scene/effect/Shadow;D)V

    .line 234
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/Shadow$2;->this$0:Ljavafx/scene/effect/Shadow;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljavafx/scene/effect/Shadow;->access$002(Ljavafx/scene/effect/Shadow;Z)Z

    move-result v4

    .line 235
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/Shadow$2;->this$0:Ljavafx/scene/effect/Shadow;

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/Shadow;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 236
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/Shadow$2;->this$0:Ljavafx/scene/effect/Shadow;

    invoke-virtual {v4}, Ljavafx/scene/effect/Shadow;->effectBoundsChanged()V

    .line 238
    :cond_0
    return-void
.end method
