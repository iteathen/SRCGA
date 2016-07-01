.class Ljavafx/scene/web/WebView$4;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebView;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebView;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebView;)V
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebView$4;->this$0:Ljavafx/scene/web/WebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$4;
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    move-object v2, p2

    .local v2, "t":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Boolean;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/web/WebView$4;->this$0:Ljavafx/scene/web/WebView;

    invoke-static {v4}, Ljavafx/scene/web/WebView;->access$000(Ljavafx/scene/web/WebView;)Lcom/sun/webkit/WebPage;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 270
    :cond_0
    return-void
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$4;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    move-object v7, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$4;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
