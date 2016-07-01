.class Lcom/sun/prism/es2/EGLX11GLPixelFormat;
.super Lcom/sun/prism/es2/GLPixelFormat;
.source "EGLX11GLPixelFormat.java"


# direct methods
.method constructor <init>(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)V
    .locals 13

    .prologue
    .line 34
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/EGLX11GLPixelFormat;
    move-wide v2, p1

    .local v2, "nativeScreen":J
    move-object/from16 v4, p3

    .local v4, "attrs":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v8, v1

    move-wide v9, v2

    move-object v11, v4

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/prism/es2/GLPixelFormat;-><init>(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)V

    .line 37
    const/4 v8, 0x7

    new-array v8, v8, [I

    move-object v5, v8

    .line 41
    .local v5, "attrArr":[I
    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getRedSize()I

    move-result v10

    aput v10, v8, v9

    .line 42
    move-object v8, v5

    const/4 v9, 0x1

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getGreenSize()I

    move-result v10

    aput v10, v8, v9

    .line 43
    move-object v8, v5

    const/4 v9, 0x2

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getBlueSize()I

    move-result v10

    aput v10, v8, v9

    .line 44
    move-object v8, v5

    const/4 v9, 0x3

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getAlphaSize()I

    move-result v10

    aput v10, v8, v9

    .line 45
    move-object v8, v5

    const/4 v9, 0x4

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getDepthSize()I

    move-result v10

    aput v10, v8, v9

    .line 46
    move-object v8, v5

    const/4 v9, 0x5

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isDoubleBuffer()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    aput v10, v8, v9

    .line 47
    move-object v8, v5

    const/4 v9, 0x6

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isOnScreen()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    aput v10, v8, v9

    .line 48
    move-wide v8, v2

    move-object v10, v5

    invoke-static {v8, v9, v10}, Lcom/sun/prism/es2/EGLX11GLPixelFormat;->nCreatePixelFormat(J[I)J

    move-result-wide v8

    move-wide v6, v8

    .line 49
    .local v6, "nativePF":J
    move-object v8, v1

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/prism/es2/EGLX11GLPixelFormat;->setNativePFInfo(J)V

    .line 51
    return-void

    .line 46
    .end local v6    # "nativePF":J
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private static native nCreatePixelFormat(J[I)J
.end method
