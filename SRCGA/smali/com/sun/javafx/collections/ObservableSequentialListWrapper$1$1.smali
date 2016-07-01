.class Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;
.super Ljava/lang/Object;
.source "ObservableSequentialListWrapper.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;->call(Ljava/lang/Object;)Ljavafx/beans/InvalidationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;

.field final synthetic val$e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;"
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;->val$e:Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v4}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$000(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V

    .line 60
    const/4 v4, 0x0

    move v2, v4

    .line 61
    .local v2, "i":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v4}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$100(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v4

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;->val$e:Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    .line 63
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    move v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$200(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;I)V

    .line 65
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1$1;->this$1:Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableSequentialListWrapper;

    invoke-static {v4}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->access$300(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V

    .line 68
    return-void
.end method
