.class public Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;
.super Ljava/lang/Object;
.source "Toolkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/Toolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageRenderingContext"
.end annotation


# instance fields
.field public camera:Lcom/sun/javafx/sg/prism/NGCamera;

.field public depthBuffer:Z

.field public height:I

.field public lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

.field public platformImage:Ljava/lang/Object;

.field public platformPaint:Ljava/lang/Object;

.field public root:Lcom/sun/javafx/sg/prism/NGNode;

.field public transform:Lcom/sun/javafx/geom/transform/BaseTransform;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
