.class Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
.super Ljava/lang/Object;
.source "GrowableDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakLink"
.end annotation


# instance fields
.field bufref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/sg/prism/GrowableDataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
