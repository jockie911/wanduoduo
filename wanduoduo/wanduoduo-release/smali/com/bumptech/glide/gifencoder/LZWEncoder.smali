.class Lcom/bumptech/glide/gifencoder/LZWEncoder;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# static fields
.field static final BITS:I = 0xc

.field private static final EOF:I = -0x1

.field static final HSIZE:I = 0x138b


# instance fields
.field ClearCode:I

.field EOFCode:I

.field a_count:I

.field accum:[B

.field clear_flg:Z

.field codetab:[I

.field private curPixel:I

.field cur_accum:I

.field cur_bits:I

.field free_ent:I

.field g_init_bits:I

.field hsize:I

.field htab:[I

.field private imgH:I

.field private imgW:I

.field private initCodeSize:I

.field masks:[I

.field maxbits:I

.field maxcode:I

.field maxmaxcode:I

.field n_bits:I

.field private pixAry:[B

.field private remaining:I


# direct methods
.method constructor <init>(II[BI)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "pixels"
    .parameter "color_depth"

    .prologue
    const/16 v2, 0x138b

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0xc

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    .line 52
    const/16 v0, 0x1000

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    .line 54
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    .line 56
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    .line 58
    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    .line 60
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 64
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 99
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 101
    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    .line 103
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->masks:[I

    .line 110
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    .line 114
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgW:I

    .line 115
    iput p2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgH:I

    .line 116
    iput-object p3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->pixAry:[B

    .line 117
    const/4 v0, 0x2

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    .line 118
    return-void

    .line 103
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x1t 0x0t 0x0t
        0xfft 0x3t 0x0t 0x0t
        0xfft 0x7t 0x0t 0x0t
        0xfft 0xft 0x0t 0x0t
        0xfft 0x1ft 0x0t 0x0t
        0xfft 0x3ft 0x0t 0x0t
        0xfft 0x7ft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data
.end method

.method private nextPixel()I
    .locals 4

    .prologue
    .line 245
    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    if-nez v1, :cond_0

    .line 246
    const/4 v1, -0x1

    .line 252
    :goto_0
    return v1

    .line 248
    :cond_0
    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    .line 250
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->pixAry:[B

    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    aget-byte v0, v1, v2

    .line 252
    .local v0, pix:B
    and-int/lit16 v1, v0, 0xff

    goto :goto_0
.end method


# virtual methods
.method final MAXCODE(I)I
    .locals 1
    .parameter "n_bits"

    .prologue
    .line 238
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method char_out(BLjava/io/OutputStream;)V
    .locals 3
    .parameter "c"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    aput-byte p1, v0, v1

    .line 124
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 126
    :cond_0
    return-void
.end method

.method cl_block(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_hash(I)V

    .line 133
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 136
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 137
    return-void
.end method

.method cl_hash(I)V
    .locals 3
    .parameter "hsize"

    .prologue
    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method compress(ILjava/io/OutputStream;)V
    .locals 10
    .parameter "init_bits"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 155
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    .line 158
    iput-boolean v9, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 159
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 160
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v7}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->MAXCODE(I)I

    move-result v7

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    .line 162
    const/4 v7, 0x1

    add-int/lit8 v8, p1, -0x1

    shl-int/2addr v7, v8

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    .line 163
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    .line 164
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 166
    iput v9, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->nextPixel()I

    move-result v2

    .line 170
    .local v2, ent:I
    const/4 v4, 0x0

    .line 171
    .local v4, hshift:I
    iget v3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    .local v3, fcode:I
    :goto_0
    const/high16 v7, 0x1

    if-ge v3, v7, :cond_0

    .line 172
    add-int/lit8 v4, v4, 0x1

    .line 171
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 173
    :cond_0
    rsub-int/lit8 v4, v4, 0x8

    .line 175
    iget v5, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    .line 176
    .local v5, hsize_reg:I
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_hash(I)V

    .line 178
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v7, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 181
    :goto_1
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->nextPixel()I

    move-result v0

    .local v0, c:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_7

    .line 182
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    shl-int v7, v0, v7

    add-int v3, v7, v2

    .line 183
    shl-int v7, v0, v4

    xor-int v6, v7, v2

    .line 185
    .local v6, i:I
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ne v7, v3, :cond_1

    .line 186
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    aget v2, v7, v6

    .line 187
    goto :goto_1

    .line 188
    :cond_1
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ltz v7, :cond_5

    .line 190
    sub-int v1, v5, v6

    .line 191
    .local v1, disp:I
    if-nez v6, :cond_2

    .line 192
    const/4 v1, 0x1

    .line 194
    :cond_2
    sub-int/2addr v6, v1

    if-gez v6, :cond_3

    .line 195
    add-int/2addr v6, v5

    .line 197
    :cond_3
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-ne v7, v3, :cond_4

    .line 198
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    aget v2, v7, v6

    .line 199
    goto :goto_1

    .line 201
    :cond_4
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v6

    if-gez v7, :cond_2

    .line 203
    .end local v1           #disp:I
    :cond_5
    invoke-virtual {p0, v2, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 204
    move v2, v0

    .line 205
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    iget v8, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    if-ge v7, v8, :cond_6

    .line 206
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    iget v8, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    aput v8, v7, v6

    .line 207
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aput v3, v7, v6

    goto :goto_1

    .line 209
    :cond_6
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_block(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 212
    .end local v6           #i:I
    :cond_7
    invoke-virtual {p0, v2, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 213
    iget v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    invoke-virtual {p0, v7, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 214
    return-void
.end method

.method encode(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 220
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgW:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgH:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    .line 221
    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    .line 223
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->compress(ILjava/io/OutputStream;)V

    .line 225
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 226
    return-void
.end method

.method flush_char(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 230
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    if-lez v0, :cond_0

    .line 231
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    .line 235
    :cond_0
    return-void
.end method

.method output(ILjava/io/OutputStream;)V
    .locals 3
    .parameter "code"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->masks:[I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 258
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    if-lez v0, :cond_0

    .line 259
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 263
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    .line 265
    :goto_1
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 266
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 267
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 268
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    goto :goto_1

    .line 261
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    goto :goto_0

    .line 273
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_3

    .line 274
    :cond_2
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_4

    .line 275
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 286
    :cond_3
    :goto_2
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    if-ne p1, v0, :cond_7

    .line 288
    :goto_3
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    if-lez v0, :cond_6

    .line 289
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 290
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 291
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    goto :goto_3

    .line 278
    :cond_4
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 279
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    if-ne v0, v1, :cond_5

    .line 280
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    goto :goto_2

    .line 282
    :cond_5
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    goto :goto_2

    .line 294
    :cond_6
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    .line 296
    :cond_7
    return-void
.end method
