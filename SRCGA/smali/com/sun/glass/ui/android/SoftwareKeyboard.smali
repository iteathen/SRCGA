.class public Lcom/sun/glass/ui/android/SoftwareKeyboard;
.super Ljava/lang/Object;
.source "SoftwareKeyboard.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/android/SoftwareKeyboard;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _hide()V
.end method

.method private static native _show()V
.end method

.method public static hide()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lcom/sun/glass/ui/android/SoftwareKeyboard;->_hide()V

    .line 36
    return-void
.end method

.method public static show()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/sun/glass/ui/android/SoftwareKeyboard;->_show()V

    .line 32
    return-void
.end method
