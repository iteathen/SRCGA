.class Ljavafx/beans/binding/MapBinding$1;
.super Ljava/lang/Object;
.source "MapBinding.java"

# interfaces
.implements Ljavafx/collections/MapChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/MapBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/MapChangeListener",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/binding/MapBinding;


# direct methods
.method constructor <init>(Ljavafx/beans/binding/MapBinding;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding$1;, "Ljavafx/beans/binding/MapBinding$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/binding/MapBinding;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/MapBinding$1;->this$0:Ljavafx/beans/binding/MapBinding;

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
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding$1;, "Ljavafx/beans/binding/MapBinding$1;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/MapBinding$1;->this$0:Ljavafx/beans/binding/MapBinding;

    invoke-static {v2}, Ljavafx/beans/binding/MapBinding;->access$000(Ljavafx/beans/binding/MapBinding;)V

    .line 75
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/MapBinding$1;->this$0:Ljavafx/beans/binding/MapBinding;

    invoke-virtual {v2}, Ljavafx/beans/binding/MapBinding;->onInvalidating()V

    .line 76
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/MapBinding$1;->this$0:Ljavafx/beans/binding/MapBinding;

    invoke-static {v2}, Ljavafx/beans/binding/MapBinding;->access$100(Ljavafx/beans/binding/MapBinding;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener$Change;)V

    .line 77
    return-void
.end method
