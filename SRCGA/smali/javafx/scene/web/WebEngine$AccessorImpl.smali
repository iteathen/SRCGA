.class final Ljavafx/scene/web/WebEngine$AccessorImpl;
.super Lcom/sun/javafx/webkit/Accessor;
.source "WebEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessorImpl"
.end annotation


# instance fields
.field private final engine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/web/WebEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/scene/web/WebEngine;)V
    .locals 7

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    move-object v1, p1

    .local v1, "w":Ljavafx/scene/web/WebEngine;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/webkit/Accessor;-><init>()V

    .line 906
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/web/WebEngine$AccessorImpl;->engine:Ljava/lang/ref/WeakReference;

    .line 907
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/web/WebEngine;Ljavafx/scene/web/WebEngine$1;)V
    .locals 5

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/web/WebEngine;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/web/WebEngine$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/web/WebEngine$AccessorImpl;-><init>(Ljavafx/scene/web/WebEngine;)V

    return-void
.end method


# virtual methods
.method public addChild(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebEngine$AccessorImpl;->getView()Ljavafx/scene/web/WebView;

    move-result-object v3

    move-object v2, v3

    .line 925
    .local v2, "view":Ljavafx/scene/web/WebView;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 926
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 928
    :cond_0
    return-void
.end method

.method public addViewListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    move-object v1, p1

    .local v1, "l":Ljavafx/beans/InvalidationListener;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebEngine$AccessorImpl;->getEngine()Ljavafx/scene/web/WebEngine;

    move-result-object v3

    move-object v2, v3

    .line 939
    .local v2, "w":Ljavafx/scene/web/WebEngine;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 940
    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/web/WebEngine;->access$1300(Ljavafx/scene/web/WebEngine;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 942
    :cond_0
    return-void
.end method

.method public getEngine()Ljavafx/scene/web/WebEngine;
    .locals 2

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebEngine$AccessorImpl;->engine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/web/WebEngine;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    return-object v0
.end method

.method public getPage()Lcom/sun/webkit/WebPage;
    .locals 3

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine$AccessorImpl;->getEngine()Ljavafx/scene/web/WebEngine;

    move-result-object v2

    move-object v1, v2

    .line 915
    .local v1, "w":Ljavafx/scene/web/WebEngine;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/web/WebEngine;->access$400(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v2

    goto :goto_0
.end method

.method public getView()Ljavafx/scene/web/WebView;
    .locals 3

    .prologue
    .line 919
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine$AccessorImpl;->getEngine()Ljavafx/scene/web/WebEngine;

    move-result-object v2

    move-object v1, v2

    .line 920
    .local v1, "w":Ljavafx/scene/web/WebEngine;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/web/WebEngine;->access$1300(Ljavafx/scene/web/WebEngine;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/web/WebView;

    goto :goto_0
.end method

.method public removeChild(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$AccessorImpl;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebEngine$AccessorImpl;->getView()Ljavafx/scene/web/WebView;

    move-result-object v3

    move-object v2, v3

    .line 932
    .local v2, "view":Ljavafx/scene/web/WebView;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 933
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 935
    :cond_0
    return-void
.end method
