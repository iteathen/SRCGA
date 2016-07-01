.class Ljavafx/beans/binding/SetBinding$1;
.super Ljava/lang/Object;
.source "SetBinding.java"

# interfaces
.implements Ljavafx/collections/SetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/SetBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/SetChangeListener",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/binding/SetBinding;


# direct methods
.method constructor <init>(Ljavafx/beans/binding/SetBinding;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$1;, "Ljavafx/beans/binding/SetBinding$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/SetBinding;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/SetBinding$1;->this$0:Ljavafx/beans/binding/SetBinding;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding$1;, "Ljavafx/beans/binding/SetBinding$1;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/SetBinding$1;->this$0:Ljavafx/beans/binding/SetBinding;

    invoke-static {v2}, Ljavafx/beans/binding/SetBinding;->access$000(Ljavafx/beans/binding/SetBinding;)V

    .line 73
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/SetBinding$1;->this$0:Ljavafx/beans/binding/SetBinding;

    invoke-virtual {v2}, Ljavafx/beans/binding/SetBinding;->onInvalidating()V

    .line 74
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/SetBinding$1;->this$0:Ljavafx/beans/binding/SetBinding;

    invoke-static {v2}, Ljavafx/beans/binding/SetBinding;->access$100(Ljavafx/beans/binding/SetBinding;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 75
    return-void
.end method
