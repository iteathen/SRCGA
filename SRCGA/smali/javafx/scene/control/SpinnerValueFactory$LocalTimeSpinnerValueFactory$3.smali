.class Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljava/time/LocalTime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;


# direct methods
.method constructor <init>(Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 5

    .prologue
    .line 1258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalTime;

    move-object v1, v3

    .line 1259
    .local v1, "currentValue":Ljava/time/LocalTime;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1260
    .line 1272
    :goto_0
    return-void

    .line 1263
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalTime;

    move-object v2, v3

    .line 1264
    .local v2, "newMax":Ljava/time/LocalTime;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMin()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1265
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMin()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setMax(Ljava/time/LocalTime;)V

    .line 1266
    goto :goto_0

    .line 1269
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1270
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 1272
    :cond_2
    goto :goto_0
.end method
