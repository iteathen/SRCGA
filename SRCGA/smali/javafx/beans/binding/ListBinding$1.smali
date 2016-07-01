.class Ljavafx/beans/binding/ListBinding$1;
.super Ljava/lang/Object;
.source "ListBinding.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/ListBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/binding/ListBinding;


# direct methods
.method constructor <init>(Ljavafx/beans/binding/ListBinding;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding$1;, "Ljavafx/beans/binding/ListBinding$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/ListBinding;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/ListBinding$1;->this$0:Ljavafx/beans/binding/ListBinding;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding$1;, "Ljavafx/beans/binding/ListBinding$1;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/ListBinding$1;->this$0:Ljavafx/beans/binding/ListBinding;

    invoke-static {v2}, Ljavafx/beans/binding/ListBinding;->access$000(Ljavafx/beans/binding/ListBinding;)V

    .line 72
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/ListBinding$1;->this$0:Ljavafx/beans/binding/ListBinding;

    invoke-virtual {v2}, Ljavafx/beans/binding/ListBinding;->onInvalidating()V

    .line 73
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/ListBinding$1;->this$0:Ljavafx/beans/binding/ListBinding;

    invoke-static {v2}, Ljavafx/beans/binding/ListBinding;->access$100(Ljavafx/beans/binding/ListBinding;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener$Change;)V

    .line 74
    return-void
.end method
