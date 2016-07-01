.class Lcom/sun/javafx/collections/ObservableListWrapper$1;
.super Ljava/lang/Object;
.source "ObservableListWrapper.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/collections/ObservableListWrapper;-><init>(Ljava/util/List;Ljavafx/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<TE;",
        "Ljavafx/beans/InvalidationListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/collections/ObservableListWrapper;


# direct methods
.method constructor <init>(Lcom/sun/javafx/collections/ObservableListWrapper;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper$1;, "Lcom/sun/javafx/collections/ObservableListWrapper$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/collections/ObservableListWrapper;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableListWrapper$1;->this$0:Lcom/sun/javafx/collections/ObservableListWrapper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper$1;, "Lcom/sun/javafx/collections/ObservableListWrapper$1;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ObservableListWrapper$1;->call(Ljava/lang/Object;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper$1;, "Lcom/sun/javafx/collections/ObservableListWrapper$1;"
    return-object v0
.end method

.method public call(Ljava/lang/Object;)Ljavafx/beans/InvalidationListener;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljavafx/beans/InvalidationListener;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper$1;, "Lcom/sun/javafx/collections/ObservableListWrapper$1;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v2, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableListWrapper$1$1;-><init>(Lcom/sun/javafx/collections/ObservableListWrapper$1;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper$1;, "Lcom/sun/javafx/collections/ObservableListWrapper$1;"
    return-object v0
.end method
