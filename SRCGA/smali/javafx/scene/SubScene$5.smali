.class Ljavafx/scene/SubScene$5;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "SubScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/SubScene;->fillProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/scene/SubScene;


# direct methods
.method constructor <init>(Ljavafx/scene/SubScene;Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/SubScene;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/paint/Paint;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/SubScene$5;->this$0:Ljavafx/scene/SubScene;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene$5;->this$0:Ljavafx/scene/SubScene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$5;
    const-string v1, "fill"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene$5;->this$0:Ljavafx/scene/SubScene;

    sget-object v2, Ljavafx/scene/SubScene$SubSceneDirtyBits;->FILL_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/SubScene;->access$000(Ljavafx/scene/SubScene;Ljavafx/scene/SubScene$SubSceneDirtyBits;)V

    .line 499
    return-void
.end method
