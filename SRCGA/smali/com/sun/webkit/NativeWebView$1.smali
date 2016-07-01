.class final Lcom/sun/webkit/NativeWebView$1;
.super Ljava/lang/Object;
.source "NativeWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/webkit/NativeWebView;->fire_load_event(IIILjava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contenType:Ljava/lang/String;

.field final synthetic val$errorCode:I

.field final synthetic val$frameID:I

.field final synthetic val$nwv:Lcom/sun/webkit/NativeWebView;

.field final synthetic val$progress:I

.field final synthetic val$state:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/sun/webkit/NativeWebView;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/NativeWebView$1;
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move v9, v1

    iput v9, v8, Lcom/sun/webkit/NativeWebView$1;->val$progress:I

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/webkit/NativeWebView$1;->val$nwv:Lcom/sun/webkit/NativeWebView;

    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/webkit/NativeWebView$1;->val$frameID:I

    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/webkit/NativeWebView$1;->val$state:I

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/sun/webkit/NativeWebView$1;->val$url:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lcom/sun/webkit/NativeWebView$1;->val$contenType:Ljava/lang/String;

    move-object v8, v0

    move v9, v7

    iput v9, v8, Lcom/sun/webkit/NativeWebView$1;->val$errorCode:I

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 99
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/NativeWebView$1;
    move-object v4, v1

    iget v4, v4, Lcom/sun/webkit/NativeWebView$1;->val$progress:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    move-wide v2, v4

    .line 100
    .local v2, "dprogress":D
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/webkit/NativeWebView$1;->val$nwv:Lcom/sun/webkit/NativeWebView;

    invoke-static {v4}, Lcom/sun/webkit/NativeWebView;->access$000(Lcom/sun/webkit/NativeWebView;)Lcom/sun/webkit/WebPage;

    move-result-object v4

    move-object v5, v1

    iget v5, v5, Lcom/sun/webkit/NativeWebView$1;->val$frameID:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/webkit/NativeWebView$1;->val$state:I

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/webkit/NativeWebView$1;->val$url:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/webkit/NativeWebView$1;->val$contenType:Ljava/lang/String;

    move-wide v9, v2

    move-object v11, v1

    iget v11, v11, Lcom/sun/webkit/NativeWebView$1;->val$errorCode:I

    invoke-virtual/range {v4 .. v11}, Lcom/sun/webkit/WebPage;->fireLoadEvent(IILjava/lang/String;Ljava/lang/String;DI)V

    .line 101
    return-void
.end method
