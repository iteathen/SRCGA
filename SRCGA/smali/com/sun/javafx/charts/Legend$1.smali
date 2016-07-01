.class Lcom/sun/javafx/charts/Legend$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/charts/Legend;


# direct methods
.method constructor <init>(Lcom/sun/javafx/charts/Legend;Z)V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/charts/Legend;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/charts/Legend$1;->this$0:Lcom/sun/javafx/charts/Legend;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$1;->this$0:Lcom/sun/javafx/charts/Legend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$1;
    const-string v1, "vertical"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$1;->this$0:Lcom/sun/javafx/charts/Legend;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/charts/Legend$1;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sun/javafx/charts/Legend;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 67
    return-void

    .line 66
    :cond_0
    sget-object v2, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    goto :goto_0
.end method
