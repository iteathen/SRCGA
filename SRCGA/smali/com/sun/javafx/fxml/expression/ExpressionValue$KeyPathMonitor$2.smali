.class Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$2;
.super Ljava/lang/Object;
.source "ExpressionValue.java"

# interfaces
.implements Ljavafx/collections/MapChangeListener;


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
        "Ljavafx/collections/MapChangeListener",
        "<",
        "Ljava/lang/String;",
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
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$2;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$2;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$2;
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+Ljava/lang/String;+Ljava/lang/Object;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$2;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    invoke-static {v2}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->access$000(Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$2;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->this$0:Lcom/sun/javafx/fxml/expression/ExpressionValue;

    invoke-static {v2}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->access$200(Lcom/sun/javafx/fxml/expression/ExpressionValue;)V

    .line 74
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$2;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    invoke-virtual {v2}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->remonitor()V

    .line 76
    :cond_0
    return-void
.end method
