.class final Ljavafx/scene/web/WebEngine$PulseTimer$2;
.super Ljava/lang/Object;
.source "WebEngine.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKPulseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine$PulseTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 957
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$PulseTimer$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pulse()V
    .locals 0

    .prologue
    .line 964
    return-void
.end method
