.class Ljavafx/scene/web/WebView$3;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKPulseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/web/WebView;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/web/WebView;


# direct methods
.method constructor <init>(Ljavafx/scene/web/WebView;)V
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/web/WebView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/web/WebView$3;->this$0:Ljavafx/scene/web/WebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView$3;->this$0:Ljavafx/scene/web/WebView;

    invoke-static {v1}, Ljavafx/scene/web/WebView;->access$300(Ljavafx/scene/web/WebView;)V

    .line 257
    return-void
.end method
