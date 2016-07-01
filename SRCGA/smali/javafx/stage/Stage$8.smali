.class Ljavafx/stage/Stage$8;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/stage/Stage;->maxWidthProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/stage/Stage;


# direct methods
.method constructor <init>(Ljavafx/stage/Stage;D)V
    .locals 8

    .prologue
    .line 1063
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$8;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/Stage;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/stage/Stage$8;->this$0:Ljavafx/stage/Stage;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1078
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage$8;->this$0:Ljavafx/stage/Stage;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage$8;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1083
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$8;
    const-string v1, "maxWidth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage$8;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 1067
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Stage$8;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage$8;->this$0:Ljavafx/stage/Stage;

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v2, :cond_0

    .line 1068
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage$8;->this$0:Ljavafx/stage/Stage;

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/stage/Stage$8;->get()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    move-object v4, v1

    iget-object v4, v4, Ljavafx/stage/Stage$8;->this$0:Ljavafx/stage/Stage;

    .line 1069
    invoke-virtual {v4}, Ljavafx/stage/Stage;->getMaxHeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1068
    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/tk/TKStage;->setMaximumSize(II)V

    .line 1071
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage$8;->this$0:Ljavafx/stage/Stage;

    invoke-virtual {v2}, Ljavafx/stage/Stage;->getWidth()D

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/stage/Stage$8;->this$0:Ljavafx/stage/Stage;

    invoke-virtual {v4}, Ljavafx/stage/Stage;->getMaxWidth()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 1072
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage$8;->this$0:Ljavafx/stage/Stage;

    move-object v3, v1

    iget-object v3, v3, Ljavafx/stage/Stage$8;->this$0:Ljavafx/stage/Stage;

    invoke-virtual {v3}, Ljavafx/stage/Stage;->getMaxWidth()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljavafx/stage/Stage;->setWidth(D)V

    .line 1074
    :cond_1
    return-void
.end method
