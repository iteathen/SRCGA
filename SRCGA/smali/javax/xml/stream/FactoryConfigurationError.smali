.class public Ljavax/xml/stream/FactoryConfigurationError;
.super Ljava/lang/Error;
.source "FactoryConfigurationError.java"


# instance fields
.field nested:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryConfigurationError;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryConfigurationError;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    .line 24
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryConfigurationError;
    move-object v1, p1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 36
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryConfigurationError;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryConfigurationError;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 48
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    .line 49
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryConfigurationError;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/FactoryConfigurationError;
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryConfigurationError;
    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 78
    .local v1, "msg":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 79
    move-object v2, v1

    move-object v0, v2

    .line 85
    .end local v0    # "this":Ljavax/xml/stream/FactoryConfigurationError;
    :goto_0
    return-object v0

    .line 80
    .restart local v0    # "this":Ljavax/xml/stream/FactoryConfigurationError;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 81
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 82
    move-object v2, v1

    if-nez v2, :cond_1

    .line 83
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 85
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method
