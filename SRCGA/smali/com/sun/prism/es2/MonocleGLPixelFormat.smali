.class Lcom/sun/prism/es2/MonocleGLPixelFormat;
.super Lcom/sun/prism/es2/GLPixelFormat;
.source "MonocleGLPixelFormat.java"


# direct methods
.method constructor <init>(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)V
    .locals 9

    .prologue
    .line 31
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/MonocleGLPixelFormat;
    move-wide v2, p1

    .local v2, "nativeScreen":J
    move-object v4, p3

    .local v4, "attrs":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/es2/GLPixelFormat;-><init>(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)V

    .line 32
    return-void
.end method
