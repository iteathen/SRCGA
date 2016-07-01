.class public abstract Lcom/sun/javafx/collections/TrackableObservableList;
.super Lcom/sun/javafx/collections/ObservableListWrapper;
.source "TrackableObservableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/collections/ObservableListWrapper",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/TrackableObservableList;, "Lcom/sun/javafx/collections/TrackableObservableList<TT;>;"
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/sun/javafx/collections/ObservableListWrapper;-><init>(Ljava/util/List;)V

    .line 43
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/collections/TrackableObservableList$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/collections/TrackableObservableList;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/collections/TrackableObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/TrackableObservableList;, "Lcom/sun/javafx/collections/TrackableObservableList<TT;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableListWrapper;-><init>(Ljava/util/List;)V

    .line 39
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/collections/TrackableObservableList;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/TrackableObservableList;->lambda$new$17(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$17(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/TrackableObservableList;, "Lcom/sun/javafx/collections/TrackableObservableList<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/TrackableObservableList;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<TT;>;)V"
        }
    .end annotation
.end method
