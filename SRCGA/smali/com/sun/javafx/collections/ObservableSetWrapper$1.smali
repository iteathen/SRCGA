.class Lcom/sun/javafx/collections/ObservableSetWrapper$1;
.super Ljava/lang/Object;
.source "ObservableSetWrapper.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/collections/ObservableSetWrapper;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final backingIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private lastElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/collections/ObservableSetWrapper;


# direct methods
.method constructor <init>(Lcom/sun/javafx/collections/ObservableSetWrapper;)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$1;, "Lcom/sun/javafx/collections/ObservableSetWrapper$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/collections/ObservableSetWrapper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableSetWrapper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 209
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableSetWrapper;

    invoke-static {v3}, Lcom/sun/javafx/collections/ObservableSetWrapper;->access$000(Lcom/sun/javafx/collections/ObservableSetWrapper;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->backingIt:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$1;, "Lcom/sun/javafx/collections/ObservableSetWrapper$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->backingIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper$1;, "Lcom/sun/javafx/collections/ObservableSetWrapper$1;"
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$1;, "Lcom/sun/javafx/collections/ObservableSetWrapper$1;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->backingIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->lastElement:Ljava/lang/Object;

    .line 220
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->lastElement:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper$1;, "Lcom/sun/javafx/collections/ObservableSetWrapper$1;"
    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper$1;, "Lcom/sun/javafx/collections/ObservableSetWrapper$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->backingIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 226
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableSetWrapper;

    new-instance v2, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleRemoveChange;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableSetWrapper;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableSetWrapper$1;->lastElement:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleRemoveChange;-><init>(Lcom/sun/javafx/collections/ObservableSetWrapper;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/sun/javafx/collections/ObservableSetWrapper;->access$100(Lcom/sun/javafx/collections/ObservableSetWrapper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 227
    return-void
.end method
