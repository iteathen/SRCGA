.class Ljavafx/scene/control/ProgressIndicator$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "ProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ProgressIndicator;->progressProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ProgressIndicator;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ProgressIndicator;D)V
    .locals 8

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ProgressIndicator;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/ProgressIndicator$2;->this$0:Ljavafx/scene/control/ProgressIndicator;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ProgressIndicator$2;->this$0:Ljavafx/scene/control/ProgressIndicator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ProgressIndicator$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator$2;
    const-string v1, "progress"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ProgressIndicator$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ProgressIndicator$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ProgressIndicator$2;->this$0:Ljavafx/scene/control/ProgressIndicator;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ProgressIndicator$2;->this$0:Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual {v2}, Ljavafx/scene/control/ProgressIndicator;->getProgress()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Ljavafx/scene/control/ProgressIndicator;->access$200(Ljavafx/scene/control/ProgressIndicator;Z)V

    .line 175
    return-void

    .line 174
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
