.class public Lcom/sun/glass/ui/android/Activity;
.super Ljava/lang/Object;
.source "Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/android/Activity;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _shutdown()V
.end method

.method public static shutdown()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/sun/glass/ui/android/Activity;->_shutdown()V

    .line 31
    return-void
.end method
