.class final Ljavafx/scene/web/WebEngine$1;
.super Ljava/lang/Object;
.source "WebEngine.java"

# interfaces
.implements Lcom/sun/javafx/webkit/Accessor$PageAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPage(Ljavafx/scene/web/WebEngine;)Lcom/sun/webkit/WebPage;
    .locals 3

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$1;
    move-object v1, p1

    .local v1, "w":Ljavafx/scene/web/WebEngine;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/web/WebEngine$1;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/web/WebEngine$1;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine;->getPage()Lcom/sun/webkit/WebPage;

    move-result-object v2

    goto :goto_0
.end method
