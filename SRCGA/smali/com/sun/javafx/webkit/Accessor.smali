.class public abstract Lcom/sun/javafx/webkit/Accessor;
.super Ljava/lang/Object;
.source "Accessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/webkit/Accessor$PageAccessor;
    }
.end annotation


# static fields
.field private static pageAccessor:Lcom/sun/javafx/webkit/Accessor$PageAccessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/webkit/Accessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPageFor(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "w":Ljavafx/scene/web/WebEngine;
    sget-object v1, Lcom/sun/javafx/webkit/Accessor;->pageAccessor:Lcom/sun/javafx/webkit/Accessor$PageAccessor;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/webkit/Accessor$PageAccessor;->getPage(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "w":Ljavafx/scene/web/WebEngine;
    return-object v0
.end method

.method public static setPageAccessor(Lcom/sun/javafx/webkit/Accessor$PageAccessor;)V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "instance":Lcom/sun/javafx/webkit/Accessor$PageAccessor;
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/webkit/Accessor;->pageAccessor:Lcom/sun/javafx/webkit/Accessor$PageAccessor;

    .line 43
    return-void
.end method


# virtual methods
.method public abstract addChild(Ljavafx/scene/Node;)V
.end method

.method public abstract addViewListener(Ljavafx/beans/InvalidationListener;)V
.end method

.method public abstract getEngine()Ljavafx/scene/web/WebEngine;
.end method

.method public abstract getPage()Lcom/sun/webkit/WebPage;
.end method

.method public abstract getView()Ljavafx/scene/web/WebView;
.end method

.method public abstract removeChild(Ljavafx/scene/Node;)V
.end method
