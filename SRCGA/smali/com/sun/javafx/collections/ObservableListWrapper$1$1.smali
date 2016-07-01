.class Lcom/sun/javafx/collections/ObservableListWrapper$1$1;
.super Ljava/lang/Object;
.source "ObservableListWrapper.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/collections/ObservableListWrapper$1;->call(Ljava/lang/Object;)Ljavafx/beans/InvalidationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/collections/ObservableListWrapper$1;

.field final synthetic val$e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sun/javafx/collections/ObservableListWrapper$1;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper$1$1;, "Lcom/sun/javafx/collections/ObservableListWrapper$1$1;"
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/collections/ObservableListWrapper$1;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableListWrapper$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;->val$e:Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper$1$1;, "Lcom/sun/javafx/collections/ObservableListWrapper$1$1;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableListWrapper$1;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableListWrapper;

    invoke-static {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->access$000(Lcom/sun/javafx/collections/ObservableListWrapper;)V

    .line 68
    const/4 v4, 0x0

    move v2, v4

    .line 69
    .local v2, "i":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableListWrapper$1;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableListWrapper;

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->size()I

    move-result v4

    move v3, v4

    .line 70
    .local v3, "size":I
    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableListWrapper$1;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableListWrapper;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ObservableListWrapper;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;->val$e:Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    .line 72
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableListWrapper$1;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableListWrapper;

    move v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/collections/ObservableListWrapper;->access$100(Lcom/sun/javafx/collections/ObservableListWrapper;I)V

    .line 70
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableListWrapper$1;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableListWrapper;

    invoke-static {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->access$200(Lcom/sun/javafx/collections/ObservableListWrapper;)V

    .line 76
    return-void
.end method
