.class Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$1;
.super Ljava/lang/Object;
.source "ExpressionValue.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


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
        "Ljavafx/collections/ListChangeListener",
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
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$1;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$1;
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljava/lang/Object;>;"
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$1;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    invoke-static {v3}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->access$000(Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 61
    .local v2, "index":I
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    if-lt v3, v4, :cond_0

    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 62
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$1;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->this$0:Lcom/sun/javafx/fxml/expression/ExpressionValue;

    invoke-static {v3}, Lcom/sun/javafx/fxml/expression/ExpressionValue;->access$100(Lcom/sun/javafx/fxml/expression/ExpressionValue;)V

    .line 63
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor$1;->this$1:Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;

    invoke-virtual {v3}, Lcom/sun/javafx/fxml/expression/ExpressionValue$KeyPathMonitor;->remonitor()V

    .line 65
    :cond_0
    goto :goto_0

    .line 66
    .end local v2    # "index":I
    :cond_1
    return-void
.end method
