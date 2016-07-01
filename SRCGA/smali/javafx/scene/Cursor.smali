.class public abstract Ljavafx/scene/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/Cursor$StandardCursor;
    }
.end annotation


# static fields
.field public static final CLOSED_HAND:Ljavafx/scene/Cursor;

.field public static final CROSSHAIR:Ljavafx/scene/Cursor;

.field public static final DEFAULT:Ljavafx/scene/Cursor;

.field public static final DISAPPEAR:Ljavafx/scene/Cursor;

.field public static final E_RESIZE:Ljavafx/scene/Cursor;

.field public static final HAND:Ljavafx/scene/Cursor;

.field public static final H_RESIZE:Ljavafx/scene/Cursor;

.field public static final MOVE:Ljavafx/scene/Cursor;

.field public static final NE_RESIZE:Ljavafx/scene/Cursor;

.field public static final NONE:Ljavafx/scene/Cursor;

.field public static final NW_RESIZE:Ljavafx/scene/Cursor;

.field public static final N_RESIZE:Ljavafx/scene/Cursor;

.field public static final OPEN_HAND:Ljavafx/scene/Cursor;

.field public static final SE_RESIZE:Ljavafx/scene/Cursor;

.field public static final SW_RESIZE:Ljavafx/scene/Cursor;

.field public static final S_RESIZE:Ljavafx/scene/Cursor;

.field public static final TEXT:Ljavafx/scene/Cursor;

.field public static final V_RESIZE:Ljavafx/scene/Cursor;

.field public static final WAIT:Ljavafx/scene/Cursor;

.field public static final W_RESIZE:Ljavafx/scene/Cursor;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DEFAULT"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->DEFAULT:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->DEFAULT:Ljavafx/scene/Cursor;

    .line 50
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CROSSHAIR"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->CROSSHAIR:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->CROSSHAIR:Ljavafx/scene/Cursor;

    .line 56
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXT"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->TEXT:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->TEXT:Ljavafx/scene/Cursor;

    .line 62
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WAIT"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->WAIT:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->WAIT:Ljavafx/scene/Cursor;

    .line 68
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SW_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->SW_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->SW_RESIZE:Ljavafx/scene/Cursor;

    .line 74
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SE_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->SE_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->SE_RESIZE:Ljavafx/scene/Cursor;

    .line 80
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NW_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->NW_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->NW_RESIZE:Ljavafx/scene/Cursor;

    .line 86
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NE_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->NE_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->NE_RESIZE:Ljavafx/scene/Cursor;

    .line 92
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "N_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->N_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->N_RESIZE:Ljavafx/scene/Cursor;

    .line 98
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "S_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->S_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->S_RESIZE:Ljavafx/scene/Cursor;

    .line 104
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "W_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->W_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->W_RESIZE:Ljavafx/scene/Cursor;

    .line 110
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "E_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->E_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->E_RESIZE:Ljavafx/scene/Cursor;

    .line 116
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OPEN_HAND"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->OPEN_HAND:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->OPEN_HAND:Ljavafx/scene/Cursor;

    .line 123
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CLOSED_HAND"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->CLOSED_HAND:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->CLOSED_HAND:Ljavafx/scene/Cursor;

    .line 131
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "HAND"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->HAND:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->HAND:Ljavafx/scene/Cursor;

    .line 137
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MOVE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->MOVE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->MOVE:Ljavafx/scene/Cursor;

    .line 146
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DISAPPEAR"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->DISAPPEAR:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->DISAPPEAR:Ljavafx/scene/Cursor;

    .line 152
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "H_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->H_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->H_RESIZE:Ljavafx/scene/Cursor;

    .line 158
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "V_RESIZE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->V_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->V_RESIZE:Ljavafx/scene/Cursor;

    .line 165
    new-instance v0, Ljavafx/scene/Cursor$StandardCursor;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    sget-object v3, Lcom/sun/javafx/cursor/CursorType;->NONE:Lcom/sun/javafx/cursor/CursorType;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/Cursor$StandardCursor;-><init>(Ljava/lang/String;Lcom/sun/javafx/cursor/CursorType;)V

    sput-object v0, Ljavafx/scene/Cursor;->NONE:Ljavafx/scene/Cursor;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Cursor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 168
    move-object v1, v0

    const-string v2, "CUSTOM"

    iput-object v2, v1, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    .line 170
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Cursor;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 168
    move-object v2, v0

    const-string v3, "CUSTOM"

    iput-object v3, v2, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    .line 172
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public static cursor(Ljava/lang/String;)Ljavafx/scene/Cursor;
    .locals 8

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "identifier":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 215
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "The cursor identifier must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/Cursor;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    new-instance v2, Ljavafx/scene/ImageCursor;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljavafx/scene/image/Image;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljavafx/scene/ImageCursor;-><init>(Ljavafx/scene/image/Image;)V

    move-object v0, v2

    .line 263
    .end local v0    # "identifier":Ljava/lang/String;
    .local v1, "uName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 223
    .end local v1    # "uName":Ljava/lang/String;
    .restart local v0    # "identifier":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 224
    .restart local v1    # "uName":Ljava/lang/String;
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->DEFAULT:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    sget-object v2, Ljavafx/scene/Cursor;->DEFAULT:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 226
    :cond_2
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->CROSSHAIR:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    sget-object v2, Ljavafx/scene/Cursor;->CROSSHAIR:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 228
    :cond_3
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->TEXT:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    sget-object v2, Ljavafx/scene/Cursor;->TEXT:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 230
    :cond_4
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->WAIT:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 231
    sget-object v2, Ljavafx/scene/Cursor;->WAIT:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 232
    :cond_5
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->MOVE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 233
    sget-object v2, Ljavafx/scene/Cursor;->MOVE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 234
    :cond_6
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->SW_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 235
    sget-object v2, Ljavafx/scene/Cursor;->SW_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 236
    :cond_7
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->SE_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    sget-object v2, Ljavafx/scene/Cursor;->SE_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 238
    :cond_8
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->NW_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 239
    sget-object v2, Ljavafx/scene/Cursor;->NW_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto :goto_0

    .line 240
    :cond_9
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->NE_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 241
    sget-object v2, Ljavafx/scene/Cursor;->NE_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 242
    :cond_a
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->N_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 243
    sget-object v2, Ljavafx/scene/Cursor;->N_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 244
    :cond_b
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->S_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 245
    sget-object v2, Ljavafx/scene/Cursor;->S_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 246
    :cond_c
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->W_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 247
    sget-object v2, Ljavafx/scene/Cursor;->W_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 248
    :cond_d
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->E_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 249
    sget-object v2, Ljavafx/scene/Cursor;->E_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 250
    :cond_e
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->OPEN_HAND:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 251
    sget-object v2, Ljavafx/scene/Cursor;->OPEN_HAND:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 252
    :cond_f
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->CLOSED_HAND:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 253
    sget-object v2, Ljavafx/scene/Cursor;->CLOSED_HAND:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 254
    :cond_10
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->HAND:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 255
    sget-object v2, Ljavafx/scene/Cursor;->HAND:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 256
    :cond_11
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->H_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 257
    sget-object v2, Ljavafx/scene/Cursor;->H_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 258
    :cond_12
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->V_RESIZE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 259
    sget-object v2, Ljavafx/scene/Cursor;->V_RESIZE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 260
    :cond_13
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->DISAPPEAR:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 261
    sget-object v2, Ljavafx/scene/Cursor;->DISAPPEAR:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 262
    :cond_14
    move-object v2, v1

    sget-object v3, Ljavafx/scene/Cursor;->NONE:Ljavafx/scene/Cursor;

    iget-object v3, v3, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 263
    sget-object v2, Ljavafx/scene/Cursor;->NONE:Ljavafx/scene/Cursor;

    move-object v0, v2

    goto/16 :goto_0

    .line 266
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Invalid cursor specification"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isUrl(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "identifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .line 276
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "identifier":Ljava/lang/String;
    :goto_0
    return v0

    .line 272
    .restart local v0    # "identifier":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 273
    .local v1, "e":Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method activate()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method deactivate()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method abstract getCurrentFrame()Lcom/sun/javafx/cursor/CursorFrame;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Cursor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Cursor;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Cursor;
    return-object v0
.end method
