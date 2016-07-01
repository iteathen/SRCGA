.class public Lorg/apache/xerces/xni/XNIException;
.super Ljava/lang/RuntimeException;
.source "XNIException.java"


# instance fields
.field private fException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XNIException;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Exception;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XNIException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XNIException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "exception":Ljava/lang/Exception;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 117
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    .line 118
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/xni/XNIException;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/xni/XNIException;
    return-object v0
.end method
