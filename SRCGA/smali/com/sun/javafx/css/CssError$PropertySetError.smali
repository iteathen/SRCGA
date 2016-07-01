.class public final Lcom/sun/javafx/css/CssError$PropertySetError;
.super Lcom/sun/javafx/css/CssError;
.source "CssError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/CssError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertySetError"
.end annotation


# instance fields
.field private final styleable:Ljavafx/css/Styleable;

.field private final styleableProperty:Ljavafx/css/CssMetaData;


# direct methods
.method public constructor <init>(Ljavafx/css/CssMetaData;Ljavafx/css/Styleable;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$PropertySetError;
    move-object v1, p1

    .local v1, "styleableProperty":Ljavafx/css/CssMetaData;
    move-object v2, p2

    .local v2, "styleable":Ljavafx/css/Styleable;
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    .line 174
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/css/CssError$PropertySetError;->styleableProperty:Ljavafx/css/CssMetaData;

    .line 175
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/css/CssError$PropertySetError;->styleable:Ljavafx/css/Styleable;

    .line 176
    return-void
.end method


# virtual methods
.method public getProperty()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$PropertySetError;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CssError$PropertySetError;->styleableProperty:Ljavafx/css/CssMetaData;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CssError$PropertySetError;
    return-object v0
.end method

.method public getStyleable()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CssError$PropertySetError;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CssError$PropertySetError;->styleable:Ljavafx/css/Styleable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CssError$PropertySetError;
    return-object v0
.end method
