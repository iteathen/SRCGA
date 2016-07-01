.class Lcom/sun/javafx/charts/Legend$LegendItem$1;
.super Ljavafx/beans/property/StringPropertyBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/charts/Legend$LegendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/charts/Legend$LegendItem;


# direct methods
.method constructor <init>(Lcom/sun/javafx/charts/Legend$LegendItem;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/charts/Legend$LegendItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/charts/Legend$LegendItem$1;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$LegendItem$1;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$LegendItem$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem$1;
    const-string v1, "text"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/charts/Legend$LegendItem$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/charts/Legend$LegendItem$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/charts/Legend$LegendItem$1;->this$0:Lcom/sun/javafx/charts/Legend$LegendItem;

    invoke-static {v1}, Lcom/sun/javafx/charts/Legend$LegendItem;->access$100(Lcom/sun/javafx/charts/Legend$LegendItem;)Ljavafx/scene/control/Label;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/charts/Legend$LegendItem$1;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 147
    return-void
.end method
