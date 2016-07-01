.class Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$3;
.super Ljava/lang/Object;
.source "ExpressionValue.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;


# direct methods
.method constructor <init>(Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$3;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$3;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$3;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Object;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$3;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->this$0:Lcom/sun/javafx/fxml/expression/ExpressionValue;

    invoke-static {v4}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->access$300(Lcom/sun/javafx/fxml/expression/ExpressionValue;)V

    .line 83
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$3;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    invoke-virtual {v4}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->remonitor()V

    .line 84
    return-void
.end method
