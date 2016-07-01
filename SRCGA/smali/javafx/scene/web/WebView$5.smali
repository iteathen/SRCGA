.class Ljavafx/scene/web/WebView$5;
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
        "Ljavafx/scene/Parent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebView;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebView;)V
    .locals 4

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebView$5;->this$0:Ljavafx/scene/web/WebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$5;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljavafx/scene/Parent;

    move-object v7, v3

    check-cast v7, Ljavafx/scene/Parent;

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$5;->changed(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Parent;Ljavafx/scene/Parent;)V

    return-void
.end method

.method public changed(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Parent;Ljavafx/scene/Parent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/scene/Parent;",
            ">;",
            "Ljavafx/scene/Parent;",
            "Ljavafx/scene/Parent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$5;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljavafx/scene/Parent;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/Parent;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/Parent;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v3

    if-nez v4, :cond_0

    .line 279
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "--> WebView Has been removed from scene"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    :cond_0
    return-void
.end method
